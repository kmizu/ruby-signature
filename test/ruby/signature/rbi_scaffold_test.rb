require "test_helper"

class Ruby::Signature::RbiScaffoldTest < Minitest::Test
  RBI = Ruby::Signature::Scaffold::RBI
  Writer = Ruby::Signature::Writer

  def test_1
    parser = RBI.new

    rbi = <<-EOR
class Array < Object
  include Enumerable

  extend T::Generic
  Elem = type_member(:out)

  sig do
    type_parameters(:U).params(
        arg0: T.type_parameter(:U),
        foo: String,
        bar: Integer,
        baz: Object,
        blk: T.proc.params(arg0: Elem).returns(BasicObject)
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def self.[](*arg0, foo:, bar: 1, **baz, &blk); end
end
    EOR

    parser.parse(rbi)

    decls = parser.decls

    # pp decls
  end

  def assert_write(decls, string)
    writer = Writer.new(out: StringIO.new)
    writer.write(decls)

    assert_equal string, writer.out.string
  end

  def test_module
    parser = RBI.new

    rbi = <<-EOR
module Foo
end
EOR

    parser.parse(rbi)

    assert_write parser.decls, <<-EOF
module Foo
end
    EOF
  end

  def test_nested_module
    parser = RBI.new

    rbi = <<-EOR
module Foo
  module Bar
  end
end
    EOR

    parser.parse(rbi)

    assert_write parser.decls, <<-EOF
module Foo
end

module Foo::Bar
end
    EOF
  end

  def test_nested_module2
    parser = RBI.new

    rbi = <<-EOR
module Foo
  module ::Bar
  end
end
    EOR

    parser.parse(rbi)

    assert_write parser.decls, <<-EOF
module Foo
end

module Bar
end
    EOF
  end

  def test_constant
    parser = RBI.new

    rbi = <<-EOR
module Foo
  ABBR_DAYNAMES = T.let(T.unsafe(nil), Array)
  ABBR_MONTHNAMES = T.let(T.unsafe(nil), Integer)
end
    EOR

    parser.parse(rbi)

    assert_write parser.decls, <<-EOF
module Foo
end

Foo::ABBR_DAYNAMES: Array

Foo::ABBR_MONTHNAMES: Integer
    EOF
  end

  def test_alias
    parser = RBI.new

    rbi = <<-EOR
module Foo
  alias_method(:foo, :Bar)
  alias hello world
end
    EOR

    parser.parse(rbi)

    assert_write parser.decls, <<-EOF
module Foo
  alias foo Bar

  alias hello world
end
    EOF
  end

  def test_block_args
    parser = RBI.new

    rbi = <<-EOR
class Hello
  sig do
    type_parameters(:U).params(
        arg0: T.type_parameter(:U),
        blk: T.proc.params(arg0: Elem).returns(BasicObject)
    )
    .returns(T::Array[T.type_parameter(:U)])
  end
  def hello(arg0, &blk); end
end
    EOR

    parser.parse(rbi)

    assert_write parser.decls, <<-EOF
class Hello
  def hello: [U] (U arg0) { (Elem arg0) -> BasicObject } -> ::Array[U]
end
    EOF
  end

  def test_overloading
    parser = RBI.new

    parser.parse(<<-EOF)
class Class
  sig {void}
  sig do
    params(
        superclass: Class,
    )
    .void
  end
  sig do
    params(
        blk: T.proc.params(arg0: Class).returns(BasicObject),
    )
    .void
  end
  sig do
    params(
        superclass: Class,
        blk: T.proc.params(arg0: Class).returns(BasicObject),
    )
    .void
  end
  def initialize(superclass=_, &blk); end
end
    EOF

    # Maybe, the argument `superclass` does not look like an optional parameter, but cannot detect if it is required or optional.
    assert_write parser.decls, <<-EOF
class Class
  def initialize: () -> void
                | (?Class superclass) -> void
                | () { (Class arg0) -> BasicObject } -> void
                | (?Class superclass) { (Class arg0) -> BasicObject } -> void
end
    EOF
  end

  def test_tuple
    parser = RBI.new

    parser.parse(<<-EOF)
class File
  sig do
    params(
        file: String,
    )
    .returns([String, String])
  end
  def self.split(file); end
end
    EOF

    assert_write parser.decls, <<-EOF
class File
  def self.split: (String file) -> [ String, String ]
end
    EOF
  end

  def test_all
    parser = RBI.new

    parser.parse(<<-EOF)
class File
  sig do
    params(
        file: T.all(String, Integer),
    )
    .void
  end
  def self.split(file); end
end
    EOF

    assert_write parser.decls, <<-EOF
class File
  def self.split: (String & Integer file) -> void
end
    EOF
  end

  def test_noreturn
    parser = RBI.new

    parser.parse(<<-EOF)
class File
  sig do
    params(
        file: T.all(String, Integer),
    )
    .returns(T.noreturn)
  end
  def self.split(file); end
end
    EOF

    assert_write parser.decls, <<-EOF
class File
  def self.split: (String & Integer file) -> bot
end
    EOF
  end

  def test_class_of
    parser = RBI.new

    parser.parse(<<-EOF)
class Foo
  sig do
    returns(T.class_of(String))
  end
  def foo; end
end
    EOF

    assert_write parser.decls, <<-EOF
class Foo
  def foo: () -> singleton(String)
end
    EOF
  end
end

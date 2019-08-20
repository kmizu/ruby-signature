module Kernel
  def caller: (?Integer start_or_range, ?Integer length) -> ::Array[String]?
            | (?::Range[Integer] start_or_range) -> ::Array[String]?
            | () -> ::Array[String]

  def caller_locations: (?Integer start_or_range, ?Integer length) -> ::Array[Thread::Backtrace::Location]?
                      | (?::Range[Integer] start_or_range) -> ::Array[Thread::Backtrace::Location]?

  def catch: (?Object tag) { (Object arg0) -> BasicObject } -> BasicObject

  def `class`: () -> any

  def define_singleton_method: (Symbol | String symbol, ?Proc | Method | UnboundMethod method) -> Symbol
                             | (Symbol | String symbol) { () -> any } -> Symbol

  def eval: (String arg0, ?Binding arg1, ?String filename, ?Integer lineno) -> any

  def iterator?: () -> T::Boolean

  def local_variables: () -> ::Array[Symbol]

  def srand: (?Numeric number) -> Numeric

  def !~: (BasicObject other) -> T::Boolean

  def <=>: (BasicObject other) -> Integer?

  def ===: (BasicObject other) -> T::Boolean

  def =~: (BasicObject other) -> NilClass

  def clone: () -> self

  def display: (IO port) -> NilClass

  def dup: () -> self

  def enum_for: (?Symbol method, *BasicObject args) -> T::Enumerator[any]
              | (?Symbol method, *BasicObject args) { () -> any } -> T::Enumerator[any]

  def eql?: (BasicObject other) -> T::Boolean

  def `extend`: (Module mod) -> NilClass

  def exit: (?Integer status) -> any

  def exit!: (?Integer status) -> any

  def fork: () -> Integer?
          | () { () -> BasicObject } -> Integer?

  def freeze: () -> self

  def frozen?: () -> T::Boolean

  def hash: () -> Integer

  def initialize_copy: (self object) -> self

  def inspect: () -> String

  def instance_of?: (Class arg0) -> T::Boolean

  def instance_variable_defined?: (Symbol | String arg0) -> T::Boolean

  def instance_variable_get: (Symbol | String arg0) -> any

  def instance_variable_set: (Symbol | String arg0, BasicObject arg1) -> any

  def instance_variables: () -> ::Array[Symbol]

  def is_a?: (Class | Module arg0) -> T::Boolean

  def kind_of?: (Class arg0) -> T::Boolean

  def method: (Symbol arg0) -> Method

  def methods: (?T::Boolean regular) -> ::Array[Symbol]

  def `nil?`: () -> T::Boolean

  def private_methods: (?T::Boolean all) -> ::Array[Symbol]

  def protected_methods: (?T::Boolean all) -> ::Array[Symbol]

  def public_method: (Symbol arg0) -> Method

  def public_methods: (?T::Boolean all) -> ::Array[Symbol]

  def `public_send`: (Symbol | String arg0, *BasicObject args) -> any

  def remove_instance_variable: (Symbol arg0) -> any

  def `send`: (String | Symbol arg0, *BasicObject arg1) -> any
            | (String | Symbol arg0, *BasicObject arg1) { () -> any } -> any

  def `singleton_class`: () -> Class

  def singleton_method: (Symbol arg0) -> Method

  def singleton_methods: (?T::Boolean all) -> ::Array[Symbol]

  def taint: () -> self

  def tainted?: () -> T::Boolean

  def tap: () { (any x) -> void } -> self

  def to_enum: (?Symbol method, *BasicObject args) -> T::Enumerator[any]
             | (?Symbol method, *BasicObject args) { () -> any } -> T::Enumerator[any]

  def to_s: () -> String

  def trust: () -> self

  def `undef`: (*BasicObject arg) -> void

  def untaint: () -> self

  def untrust: () -> self

  def untrusted?: () -> T::Boolean

  def Array: (NilClass x) -> any
           | (BasicObject x) -> ::Array[any]

  def BigDecimal: (Integer | Float | Rational | BigDecimal | String initial, ?Integer digits, ?exception: T::Boolean exception) -> BigDecimal

  def Complex: (Numeric | String x, ?Numeric | String y, ?exception: T::Boolean exception) -> Complex

  def Float: (Numeric | String x, ?exception: T::Boolean exception) -> Float

  def Hash: [K, V] (Object x) -> ::Hash[K, V]

  def Integer: (Numeric | String arg, ?Integer base, ?exception: T::Boolean exception) -> Integer

  def Rational: (Numeric | String | Object x, ?Numeric | String y, ?exception: T::Boolean exception) -> Rational

  def String: (Object x) -> String

  def __callee__: () -> Symbol?

  def __dir__: () -> String?

  def __method__: () -> Symbol?

  def `: (String arg0) -> String

  def abort: (?String msg) -> bot

  def at_exit: () { () -> BasicObject } -> Proc

  def autoload: (String | Symbol _module, String filename) -> NilClass

  def autoload?: (Symbol | String name) -> String?

  def binding: () -> Binding

  def block_given?: () -> T::Boolean

  def exit: () -> bot
          | (?Integer | TrueClass | FalseClass status) -> bot

  def exit!: (Integer | TrueClass | FalseClass status) -> bot

  def fail: () -> bot
          | (?String arg0) -> bot
          | (?Class arg0, ?::Array[String] arg1) -> bot
          | (?Class arg0, ?String arg1, ?::Array[String] arg2) -> bot

  def format: (String format, *BasicObject args) -> String

  def gets: (?String arg0, ?Integer arg1) -> String

  def global_variables: () -> ::Array[Symbol]

  def load: (String filename, ?T::Boolean arg0) -> T::Boolean

  def loop: () { () -> any } -> bot
          | () -> T::Enumerator[any]

  def open: (String name, ?String | Integer rest, ?String block) -> IO?

  def print: (*Kernel args) -> NilClass

  def printf: (?IO arg0, ?String arg1, *BasicObject arg2) -> NilClass

  def proc: () { () -> any } -> Proc

  def lambda: () { () -> any } -> Proc

  def putc: (Integer arg0) -> Integer

  def puts: (*BasicObject arg0) -> NilClass

  def p: (*BasicObject arg0) -> NilClass

  def rand: () -> Float
          | (?Integer arg0) -> Integer
          | (?::Range[Integer] arg0) -> Integer
          | (?::Range[Float] arg0) -> Float

  def readline: (?String arg0, ?Integer arg1) -> String

  def readlines: (?String arg0, ?Integer arg1) -> ::Array[String]

  def require: (String path) -> T::Boolean

  def require_relative: (String feature) -> T::Boolean

  def select: (::Array[IO] read, ?::Array[IO] write, ?::Array[IO] error, ?Integer timeout) -> ::Array[String]

  def sleep: () -> bot
           | (Numeric duration) -> Integer

  def sprintf: (String format, *BasicObject args) -> String

  def syscall: (Integer num, *BasicObject args) -> any

  def test: (String cmd, String file1, ?String file2) -> (TrueClass | FalseClass | Time)

  def throw: (Object tag, ?BasicObject obj) -> bot

  def warn: (*String msg) -> NilClass

  def raise: () -> bot
           | (?String arg0) -> bot
           | (?Class arg0, ?String arg1, ?::Array[String] arg2) -> bot
           | (?Exception arg0, ?String arg1, ?::Array[String] arg2) -> bot

  def exec: (*String args) -> bot

  def system: (*String args) -> (NilClass | FalseClass | TrueClass)
end

Kernel::RUBYGEMS_ACTIVATION_MONITOR: Monitor

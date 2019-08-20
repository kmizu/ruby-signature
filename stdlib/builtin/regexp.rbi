class Regexp < Object
  def self.escape: (String | Symbol arg0) -> String

  def self.last_match: () -> MatchData
                     | (?Integer arg0) -> String

  def self.try_convert: (BasicObject obj) -> Regexp?

  def ==: (BasicObject other) -> T::Boolean

  def ===: (BasicObject other) -> T::Boolean

  def =~: (String? str) -> Integer?

  def casefold?: () -> T::Boolean

  def encoding: () -> Encoding

  def fixed_encoding?: () -> T::Boolean

  def hash: () -> Integer

  def initialize: (String arg0, ?BasicObject options, ?String kcode) -> Object
                | (Regexp arg0) -> void

  def inspect: () -> String

  def match: (String? arg0, ?Integer arg1) -> MatchData?

  def named_captures: () -> ::Hash[String, ::Array[Integer]]

  def names: () -> ::Array[String]

  def options: () -> Integer

  def source: () -> String

  def to_s: () -> String

  def ~: () -> Integer?

  def self.compile: (String arg0, ?BasicObject options, ?String kcode) -> self
                  | (Regexp arg0) -> self

  def self.quote: (String | Symbol arg0) -> String

  def eql?: (BasicObject other) -> T::Boolean
end

Regexp::EXTENDED: Integer

Regexp::FIXEDENCODING: Integer

Regexp::IGNORECASE: Integer

Regexp::MULTILINE: Integer

Regexp::NOENCODING: Integer

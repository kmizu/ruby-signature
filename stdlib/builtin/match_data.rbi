class MatchData < Object
  def ==: (BasicObject arg0) -> T::Boolean

  def []: (Integer i_or_start_or_range_or_name) -> String?
        | (Integer i_or_start_or_range_or_name, ?Integer length) -> ::Array[String]
        | (::Range[Integer] i_or_start_or_range_or_name) -> ::Array[String]
        | (String | Symbol i_or_start_or_range_or_name) -> String?

  def begin: (Integer n) -> Integer

  def captures: () -> ::Array[String]

  def `end`: (Integer n) -> Integer

  def eql?: (BasicObject other) -> T::Boolean

  def hash: () -> Integer

  def inspect: () -> String

  def length: () -> Integer

  def named_captures: () -> ::Hash[String, String?]

  def names: () -> ::Array[String]

  def offset: (Integer n) -> ::Array[Integer]

  def post_match: () -> String

  def pre_match: () -> String

  def regexp: () -> Regexp

  def size: () -> Integer

  def string: () -> String

  def to_a: () -> ::Array[String]

  def to_s: () -> String

  def values_at: (*Integer indexes) -> ::Array[String]
end

class String < Object
  include Comparable

  def %: (Object arg0) -> String

  def *: (Integer arg0) -> String

  def +: (String arg0) -> String

  def <<: (Object arg0) -> String

  def <=>: (String other) -> Integer?

  def ==: (BasicObject arg0) -> T::Boolean

  def ===: (BasicObject arg0) -> T::Boolean

  def =~: (Object arg0) -> Integer?

  def []: (Integer arg0, ?Integer arg1) -> String?
        | (::Range[Integer] | Regexp arg0) -> String?
        | (Regexp arg0, ?Integer arg1) -> String?
        | (Regexp arg0, ?String arg1) -> String?
        | (String arg0) -> String?

  def ascii_only?: () -> T::Boolean

  def b: () -> String

  def bytes: () -> Array

  def bytesize: () -> Integer

  def byteslice: (Integer arg0, ?Integer arg1) -> String?
               | (::Range[Integer] arg0) -> String?

  def capitalize: () -> String

  def capitalize!: () -> String?

  def casecmp: (String arg0) -> Integer?

  def center: (Integer arg0, ?String arg1) -> String

  def chars: () -> Array

  def chomp: (?String arg0) -> String

  def chomp!: (?String arg0) -> String?

  def chop: () -> String

  def chop!: () -> String?

  def chr: () -> String

  def clear: () -> String

  def codepoints: () -> ::Array[Integer]
                | () { () -> any } -> ::Array[Integer]

  def concat: (Integer | Object arg0) -> String

  def count: (String arg0, *String arg1) -> Integer

  def crypt: (String arg0) -> String

  def delete: (String arg0, *String arg1) -> String

  def delete!: (String arg0, *String arg1) -> String?

  def downcase: () -> String

  def downcase!: () -> String?

  def dump: () -> String

  def each_byte: () { (Integer arg0) -> BasicObject } -> String
               | () -> T::Enumerator[Integer]

  def each_char: () { (String arg0) -> BasicObject } -> String
               | () -> T::Enumerator[String]

  def each_codepoint: () { (Integer arg0) -> BasicObject } -> String
                    | () -> T::Enumerator[Integer]

  def each_line: (?String arg0) { (String arg0) -> BasicObject } -> String
               | (?String arg0) -> T::Enumerator[String]

  def empty?: () -> T::Boolean

  def encoding: () -> Encoding

  def end_with?: (*String arg0) -> T::Boolean

  def eql?: (String arg0) -> T::Boolean

  def force_encoding: (String | Encoding arg0) -> String

  def getbyte: (Integer arg0) -> Integer?

  def gsub: (Regexp | String arg0, ?String arg1) -> String
          | (Regexp | String arg0, ?Hash arg1) -> String
          | (Regexp | String arg0) { (String arg0) -> BasicObject } -> String
          | (Regexp | String arg0) -> T::Enumerator[String]
          | (Regexp | String arg0) -> String

  def gsub!: (Regexp | String arg0, ?String arg1) -> String?
           | (Regexp | String arg0) { (String arg0) -> BasicObject } -> String?
           | (Regexp | String arg0) -> T::Enumerator[String]

  def hash: () -> Integer

  def hex: () -> Integer

  def `include?`: (String arg0) -> T::Boolean

  def index: (Regexp | String arg0, ?Integer arg1) -> Integer?

  def initialize: (?String str) -> void

  def insert: (Integer arg0, String arg1) -> String

  def inspect: () -> String

  def intern: () -> Symbol

  def length: () -> Integer

  def lines: (?String arg0) -> ::Array[String]

  def ljust: (Integer arg0, ?String arg1) -> String

  def lstrip: () -> String

  def lstrip!: () -> String?

  def match: (Regexp | String arg0) -> MatchData?
           | (Regexp | String arg0, ?Integer arg1) -> MatchData?

  def match?: (Regexp | String arg0) -> T::Boolean
            | (Regexp | String arg0, ?Integer arg1) -> T::Boolean

  def next: () -> String

  def next!: () -> String

  def oct: () -> Integer

  def ord: () -> Integer

  def partition: (Regexp | String arg0) -> [ String, String, String ]

  def `prepend`: (String arg0) -> String

  def replace: (String arg0) -> String

  def reverse: () -> String

  def rindex: (String | Regexp arg0, ?Integer arg1) -> Integer?

  def rjust: (Integer arg0, ?String arg1) -> String

  def rpartition: (String | Regexp arg0) -> [ String, String, String ]

  def rstrip: () -> String

  def rstrip!: () -> String

  def scan: (Regexp | String arg0) -> ::Array[String | ::Array[String]]
          | (Regexp | String arg0) { () -> any } -> ::Array[String | ::Array[String]]

  def scrub: (?String arg0) -> String
           | (?String arg0) { (any arg0) -> BasicObject } -> String

  def scrub!: (?String arg0) -> String
            | (?String arg0) { (any arg0) -> BasicObject } -> String

  def setbyte: (Integer arg0, Integer arg1) -> Integer

  def size: () -> Integer

  def slice!: (Integer arg0, ?Integer arg1) -> String?
            | (::Range[Integer] | Regexp arg0) -> String?
            | (Regexp arg0, ?Integer arg1) -> String?
            | (Regexp arg0, ?String arg1) -> String?
            | (String arg0) -> String?

  def split: (?Regexp | String arg0, ?Integer arg1) -> ::Array[String]
           | (?Integer arg0) -> ::Array[String]

  def squeeze: (?String arg0) -> String

  def squeeze!: (?String arg0) -> String

  def start_with?: (*String arg0) -> T::Boolean

  def strip: () -> String

  def strip!: () -> String

  def sub: (Regexp | String arg0, ?String | Hash arg1) -> String
         | (Regexp | String arg0) { (String arg0) -> BasicObject } -> String

  def sub!: (Regexp | String arg0, ?String arg1) -> String
          | (Regexp | String arg0) { (String arg0) -> BasicObject } -> String

  def succ: () -> String

  def sum: (?Integer arg0) -> Integer

  def swapcase: () -> String

  def swapcase!: () -> String?

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_i: (?Integer arg0) -> Integer

  def to_r: () -> Rational

  def to_s: () -> String

  def to_str: () -> String

  def to_sym: () -> Symbol

  def tr: (String arg0, String arg1) -> String

  def tr!: (String arg0, String arg1) -> String?

  def tr_s: (String arg0, String arg1) -> String

  def tr_s!: (String arg0, String arg1) -> String?

  def unpack: (String arg0) -> ::Array[(Integer | Float | String)?]

  def upcase: () -> String

  def upcase!: () -> String?

  def upto: [Bool] (String arg0, ?Bool arg1) -> T::Enumerator[String]
          | [Bool] (String arg0, ?Bool arg1) { (String arg0) -> BasicObject } -> String

  def valid_encoding?: () -> T::Boolean

  def self.try_convert: (Object obj) -> String?

  def slice: (Integer arg0, ?Integer arg1) -> String?
           | (::Range[Integer] | Regexp arg0) -> String?
           | (Regexp arg0, ?Integer arg1) -> String?
           | (Regexp arg0, ?String arg1) -> String?
           | (String arg0) -> String?
end

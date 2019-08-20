class Time < Object
  include Comparable

  def self.at: (Time | Numeric seconds) -> Time
             | (Numeric seconds, ?Numeric microseconds_with_frac) -> Time

  def self.gm: (Integer year, ?Integer | String month, ?Integer day, ?Integer hour, ?Integer min, ?Numeric sec, ?Numeric usec_with_frac) -> Time

  def self.local: (Integer year, ?Integer | String month, ?Integer day, ?Integer hour, ?Integer min, ?Numeric sec, ?Numeric usec_with_frac) -> Time

  def self.now: () -> Time

  def self.utc: (Integer year, ?Integer | String month, ?Integer day, ?Integer hour, ?Integer min, ?Numeric sec, ?Numeric usec_with_frac) -> Time

  def +: (Numeric arg0) -> Time

  def -: (Time arg0) -> Float
       | (Numeric arg0) -> Time

  def <: (Time arg0) -> T::Boolean

  def <=: (Time arg0) -> T::Boolean

  def <=>: (Time other) -> Integer?

  def >: (Time arg0) -> T::Boolean

  def >=: (Time arg0) -> T::Boolean

  def asctime: () -> String

  def ctime: () -> String

  def day: () -> Integer

  def dst?: () -> T::Boolean

  def eql?: (BasicObject arg0) -> T::Boolean

  def friday?: () -> T::Boolean

  def getgm: () -> Time

  def getlocal: (?Integer utc_offset) -> Time

  def getutc: () -> Time

  def gmt?: () -> T::Boolean

  def gmt_offset: () -> Integer

  def gmtime: () -> Time

  def hash: () -> Integer

  def hour: () -> Integer

  def initialize: (?Integer | String year, ?Integer | String month, ?Integer | String day, ?Integer | String hour, ?Integer | String min, ?Numeric | String sec, ?Numeric | String usec_with_frac) -> void

  def inspect: () -> String

  def isdst: () -> T::Boolean

  def localtime: (?String utc_offset) -> Time

  def mday: () -> Integer

  def min: () -> Integer

  def mon: () -> Integer

  def monday?: () -> T::Boolean

  def nsec: () -> Integer

  def round: (Integer arg0) -> Time

  def saturday?: () -> T::Boolean

  def sec: () -> Integer

  def strftime: (String arg0) -> String

  def subsec: () -> Numeric

  def succ: () -> Time

  def sunday?: () -> T::Boolean

  def thursday?: () -> T::Boolean

  def to_a: () -> [ Integer, Integer, Integer, Integer, Integer, Integer, Integer, Integer, T::Boolean, String ]

  def to_f: () -> Float

  def to_i: () -> Integer

  def to_r: () -> Rational

  def to_s: () -> String

  def tuesday?: () -> T::Boolean

  def tv_nsec: () -> Numeric

  def tv_sec: () -> Numeric

  def tv_usec: () -> Numeric

  def usec: () -> Numeric

  def utc: () -> Time

  def utc?: () -> T::Boolean

  def utc_offset: () -> Integer

  def wday: () -> Integer

  def wednesday?: () -> T::Boolean

  def yday: () -> Integer

  def year: () -> Integer

  def zone: () -> String

  def self.mktime: (Integer year, ?Integer | String month, ?Integer day, ?Integer hour, ?Integer min, ?Numeric sec, ?Numeric usec_with_frac) -> Time

  def gmtoff: () -> Integer

  def month: () -> Integer
end

Time::RFC2822_DAY_NAME: Array

Time::RFC2822_MONTH_NAME: Array

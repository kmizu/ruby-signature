class Exception < Object
  def ==: (BasicObject arg0) -> T::Boolean

  def backtrace: () -> ::Array[String]?

  def backtrace_locations: () -> ::Array[Thread::Backtrace::Location]?

  def cause: () -> Exception?

  def exception: (?String arg0) -> Exception

  def initialize: (?String arg0) -> void

  def inspect: () -> String

  def message: () -> String

  def set_backtrace: (String | ::Array[String] arg0) -> ::Array[String]

  def to_s: () -> String
end

class TracePoint < Object
  def initialize: (*Symbol events) { (TracePoint tp) -> void } -> void

  def self.stat: () -> any

  def self.trace: (*Symbol events) { (TracePoint tp) -> void } -> TracePoint

  def binding: () -> any

  def callee_id: () -> any

  def `defined_class`: () -> Module

  def disable: () -> T::Boolean
             | () { () -> void } -> void

  def enable: () -> T::Boolean
            | () { () -> void } -> void

  def enabled?: () -> T::Boolean

  def inspect: () -> String

  def lineno: () -> Integer

  def method_id: () -> any

  def path: () -> String

  def raised_exception: () -> any

  def return_value: () -> any

  def `self`: () -> any
end

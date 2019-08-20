module GC
  def self.count: () -> Integer

  def self.disable: () -> T::Boolean

  def self.enable: () -> T::Boolean

  def self.start: (?full_mark: T::Boolean full_mark, ?immediate_sweep: T::Boolean immediate_sweep) -> NilClass

  def self.stat: (?::Hash[Symbol, Integer] arg0) -> ::Hash[Symbol, Integer]
               | (?Symbol arg0) -> Integer

  def self.stress: () -> (Integer | TrueClass | FalseClass)
end

GC::INTERNAL_CONSTANTS: Hash

GC::OPTS: Array

module GC::Profiler
  def self.clear: () -> void

  def self.disable: () -> void

  def self.enable: () -> void

  def self.enabled?: () -> T::Boolean

  def self.raw_data: () -> ::Array[::Hash[Symbol, any]]

  def self.report: (?IO io) -> void

  def self.result: () -> String

  def self.total_time: () -> Float
end

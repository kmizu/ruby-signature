class Random < Object
  include Random::Formatter

  def ==: (BasicObject arg0) -> T::Boolean

  def bytes: (Integer size) -> String

  def initialize: (?Integer seed) -> void

  def rand: (?Integer | ::Range[Integer] max) -> Integer
          | (?Float | ::Range[Float] max) -> Float

  def seed: () -> Integer

  def self.new_seed: () -> Integer

  def self.rand: (?Integer max) -> Numeric

  def self.srand: (?Integer number) -> Numeric
end

Random::DEFAULT: Random

module Random::Formatter
  def base64: (?Integer? n) -> String

  def hex: (?Integer? n) -> String

  def rand: () -> Float
          | (?Float? n) -> Float
          | (?Integer? n) -> Integer
          | (?Numeric? n) -> Numeric
          | (?::Range[Float]? n) -> Float
          | (?::Range[Integer]? n) -> Integer
          | (?::Range[Numeric]? n) -> Numeric

  def random_bytes: (?Integer? n) -> String

  def random_number: () -> Float
                   | (?Float? n) -> Float
                   | (?Integer? n) -> Integer
                   | (?Numeric? n) -> Numeric
                   | (?::Range[Float]? n) -> Float
                   | (?::Range[Integer]? n) -> Integer
                   | (?::Range[Numeric]? n) -> Numeric

  def urlsafe_base64: (?Integer? n, ?T::Boolean padding) -> String

  def uuid: () -> String
end

module Comparable
  def <: (any other) -> T::Boolean

  def <=: (any other) -> T::Boolean

  def ==: (any other) -> T::Boolean

  def >: (any other) -> T::Boolean

  def >=: (any other) -> T::Boolean

  def between?: (any min, any max) -> T::Boolean

  def clamp: (any min, any max) -> any
end

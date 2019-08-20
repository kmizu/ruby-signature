class Object < BasicObject
  include Kernel

  def object_id: () -> Integer

  def `yield_self`: () { (any arg) -> any } -> any

  def then: () { (any arg) -> any } -> any
end

class Proc < Object
  def arity: () -> Integer

  def binding: () -> Binding

  def call: (*BasicObject arg0) -> any

  def []: (*BasicObject arg0) -> any

  def curry: (?Integer arity) -> Proc

  def hash: () -> Integer

  def lambda?: () -> T::Boolean

  def parameters: () -> ::Array[[ Symbol, Symbol ]]

  def source_location: () -> [ String, Integer ]

  def to_proc: () -> self

  def to_s: () -> String

  def inspect: () -> String
end

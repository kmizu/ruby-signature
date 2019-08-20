class BasicObject
  def !: () -> T::Boolean

  def !=: (BasicObject other) -> T::Boolean

  def ==: (BasicObject other) -> T::Boolean

  def __id__: () -> Integer

  def __send__: (Symbol arg0, *BasicObject arg1) -> any

  def equal?: (BasicObject other) -> T::Boolean

  def instance_eval: (?String arg0, ?String filename, ?Integer lineno) -> any
                   | [U] () { () -> U } -> U

  def instance_exec: [U, V] (*V args) { (any args) -> U } -> U
end

class UnboundMethod
  def arity: () -> Integer

  def bind: (BasicObject obj) -> Method

  def name: () -> Symbol

  def owner: () -> Module

  def parameters: () -> ::Array[[ Symbol, Symbol ]]

  def source_location: () -> [ String, Integer ]?

  def super_method: () -> UnboundMethod?
end

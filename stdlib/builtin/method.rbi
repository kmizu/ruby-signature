class Method < Object
  def to_proc: () -> Proc

  def call: (*any args) -> any

  def <<: (any g) -> any

  def ===: (*any obj) -> any

  def >>: (any g) -> any

  def []: (*any args) -> any

  def arity: () -> Integer

  def clone: () -> Method

  def curry: (*any args) -> any

  def name: () -> Symbol

  def original_name: () -> Symbol

  def owner: () -> (Class | Module)

  def parameters: () -> ::Array[any]

  def receiver: () -> any

  def source_location: () -> any

  def super_method: () -> Method?

  def unbind: () -> any
end

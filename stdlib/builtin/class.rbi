class Class < Module
  def allocate: () -> any

  def new: (*any args) -> any

  def inherited: (Class arg0) -> any

  def instance_methods: (?T::Boolean arg0) -> ::Array[Symbol]

  def name: () -> String?

  def `superclass`: () -> Class?
                  | () -> Class

  def initialize: () -> void
                | (?Class superclass) -> void
                | () { (Class arg0) -> BasicObject } -> void
                | (?Class superclass) { (Class arg0) -> BasicObject } -> void
end

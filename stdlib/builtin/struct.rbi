class Struct < Object
  include Enumerable

  def initialize: (Symbol | String arg0, *Symbol | String arg1, ?keyword_init: T::Boolean keyword_init) -> void

  def each: () { (Elem arg0) -> BasicObject } -> any
          | () -> self

  def self.members: () -> ::Array[Symbol]

  def new: (*any args) -> Struct
end

Struct::Elem: any

class Enumerator < Object
  include Enumerable

  def each: () { (Elem arg0) -> BasicObject } -> any
          | () -> self

  def feed: (Elem arg0) -> NilClass

  def initialize: (?Integer arg0) { (Enumerator::Yielder arg0) -> void } -> void

  def inspect: () -> String

  def next: () -> Elem

  def next_values: () -> ::Array[Elem]

  def peek: () -> Elem

  def peek_values: () -> ::Array[Elem]

  def rewind: () -> self

  def size: () -> (Integer | Float)?

  def with_index: (?Integer offset) { (Elem arg0, Integer arg1) -> BasicObject } -> any
                | (?Integer offset) -> T::Enumerator[[ Elem, Integer ]]

  def with_object: [U] (U arg0) { (Elem arg0, U arg1) -> BasicObject } -> any
                 | [U] (U arg0) -> T::Enumerator[[ Elem, U ]]
end

Enumerator::Elem: any

class Enumerator::Generator < Object
  include Enumerable
end

Enumerator::Generator::Elem: any

class Enumerator::Lazy < Enumerator
end

Enumerator::Lazy::Elem: any

class Enumerator::Yielder < Object
  def <<: (*BasicObject arg0) -> void

  def yield: (*BasicObject arg0) -> void
end

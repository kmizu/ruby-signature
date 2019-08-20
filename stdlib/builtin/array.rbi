class Array < Object
  include Enumerable

  def self.[]: [U] (*U arg0) -> ::Array[U]

  def &: (::Array[Elem] arg0) -> ::Array[Elem]

  def *: (Integer arg0) -> ::Array[Elem]
       | (String arg0) -> String

  def +: (T::Enumerable[Elem] arg0) -> ::Array[Elem]
       | (::Array[Elem] arg0) -> ::Array[Elem]

  def -: (::Array[any] arg0) -> ::Array[Elem]

  def <<: (Elem arg0) -> ::Array[Elem]

  def []: (Integer | Float arg0) -> Elem?
        | (::Range[Integer] arg0) -> ::Array[Elem]?
        | (Integer arg0, ?Integer arg1) -> ::Array[Elem]?

  def []=: (Integer arg0, Elem arg1) -> Elem
         | (Integer arg0, Integer arg1, ?Elem arg2) -> Elem
         | (::Range[Integer] arg0, Elem arg1) -> Elem

  def `append`: (*Elem arg0) -> ::Array[Elem]

  def assoc: (Elem arg0) -> ::Array[Elem]

  def at: (Integer arg0) -> Elem

  def clear: () -> ::Array[Elem]

  def collect: [U] () { (Elem arg0) -> U } -> ::Array[U]
             | () -> T::Enumerator[Elem]

  def combination: (Integer arg0) { (::Array[Elem] arg0) -> BasicObject } -> ::Array[Elem]
                 | (Integer arg0) -> T::Enumerator[::Array[Elem]]

  def compact: () -> ::Array[any]

  def compact!: () -> ::Array[Elem]

  def concat: [T] (::Array[T] arrays) -> ::Array[Elem | T]

  def count: () -> Integer
           | (?Elem arg0) -> Integer
           | () { (Elem arg0) -> BasicObject } -> Integer

  def cycle: (?Integer arg0) { (Elem arg0) -> BasicObject } -> any
           | (?Integer arg0) -> T::Enumerator[Elem]

  def delete: (Elem arg0) -> Elem?
            | (Elem arg0) { () -> Elem } -> Elem

  def delete_at: (Integer arg0) -> Elem?

  def delete_if: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
               | () -> T::Enumerator[Elem]

  def difference: (*::Array[any] arrays) -> ::Array[Elem]

  def drop: (Integer arg0) -> ::Array[Elem]

  def drop_while: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
                | () -> T::Enumerator[Elem]

  def each: () -> T::Enumerator[Elem]
          | () { (Elem arg0) -> BasicObject } -> ::Array[Elem]

  def each_index: () { (Integer arg0) -> BasicObject } -> ::Array[Elem]
                | () -> T::Enumerator[Elem]

  def empty?: () -> T::Boolean

  def fetch: (Integer arg0) -> Elem
           | (Integer arg0, ?Elem arg1) -> Elem
           | (Integer arg0) { (Integer arg0) -> Elem } -> Elem

  def fill: (?Elem arg0) -> ::Array[Elem]
          | (?Elem arg0, ?Integer arg1, ?Integer arg2) -> ::Array[Elem]
          | (?Elem arg0, ?::Range[Integer] arg1) -> ::Array[Elem]
          | () { (Integer arg0) -> Elem } -> ::Array[Elem]
          | (?Integer arg0, ?Integer arg1) { (Integer arg0) -> Elem } -> ::Array[Elem]
          | (?::Range[Integer] arg0) { (Integer arg0) -> Elem } -> ::Array[Elem]

  def first: () -> Elem?
           | (?Integer arg0) -> ::Array[Elem]

  def flatten: (?Integer depth) -> ::Array[any]

  def `include?`: [U] (U arg0) -> T::Boolean

  def index: [U] (?U arg0) -> Integer?
           | () { (Elem arg0) -> BasicObject } -> Integer?
           | () -> T::Enumerator[Elem]

  def initialize: () -> Object
                | (?Integer arg0) -> Object
                | (?Integer arg0, ?Elem arg1) -> void

  def insert: (Integer arg0, *Elem arg1) -> ::Array[Elem]

  def inspect: () -> String

  def join: (?String arg0) -> String

  def keep_if: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]

  def last: () -> Elem?
          | (?Integer arg0) -> ::Array[Elem]

  def length: () -> Integer

  def map: [U] () { (Elem arg0) -> U } -> ::Array[U]
         | () -> T::Enumerator[Elem]

  def map!: [U] () { (Elem arg0) -> U } -> ::Array[U]
          | () -> T::Enumerator[Elem]

  def member?: (Elem arg0) -> T::Boolean

  def permutation: (?Integer arg0) -> T::Enumerator[Elem]
                 | (?Integer arg0) { (::Array[Elem] arg0) -> BasicObject } -> ::Array[Elem]

  def pop: (?Integer arg0) -> ::Array[Elem]
         | () -> Elem?

  def `prepend`: (*Elem arg0) -> ::Array[Elem]

  def product: [U] (*::Array[U] arg0) -> ::Array[::Array[Elem | U]]

  def push: (*Elem arg0) -> ::Array[Elem]

  def rassoc: [U] (U arg0) -> Elem?

  def reject: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
            | () -> T::Enumerator[Elem]

  def reject!: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
             | () -> T::Enumerator[Elem]

  def repeated_combination: (Integer arg0) { (::Array[Elem] arg0) -> BasicObject } -> ::Array[Elem]
                          | (Integer arg0) -> T::Enumerator[Elem]

  def repeated_permutation: (Integer arg0) { (::Array[Elem] arg0) -> BasicObject } -> ::Array[Elem]
                          | (Integer arg0) -> T::Enumerator[Elem]

  def reverse: () -> ::Array[Elem]

  def reverse!: () -> ::Array[Elem]

  def reverse_each: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
                  | () -> T::Enumerator[Elem]

  def rindex: (?Elem arg0) -> Integer?
            | () { (Elem arg0) -> BasicObject } -> Integer?
            | () -> T::Enumerator[Elem]

  def rotate: (?Integer arg0) -> ::Array[Elem]

  def rotate!: (?Integer arg0) -> ::Array[Elem]

  def sample: () -> Elem?
            | (?Integer arg0) -> ::Array[Elem]

  def select: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
            | () -> T::Enumerator[Elem]

  def select!: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
             | () -> T::Enumerator[Elem]

  def shift: () -> Elem?
           | (?Integer arg0) -> ::Array[Elem]

  def shuffle: () -> ::Array[Elem]

  def shuffle!: () -> ::Array[Elem]

  def slice!: (::Range[Integer] arg0) -> ::Array[Elem]
            | (Integer arg0, ?Integer arg1) -> ::Array[Elem]
            | (Integer | Float arg0) -> Elem?

  def sort: () -> ::Array[Elem]
          | () { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def sort!: () -> ::Array[Elem]
           | () { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def sort_by!: [U] () { (Elem arg0) -> U } -> ::Array[Elem]
              | () -> T::Enumerator[Elem]

  def take: (Integer arg0) -> ::Array[Elem]

  def take_while: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
                | () -> T::Enumerator[Elem]

  def to_a: () -> ::Array[Elem]

  def to_ary: () -> ::Array[Elem]

  def transpose: () -> ::Array[Elem]

  def union: (*::Array[any] arrays) -> ::Array[any]

  def uniq: () -> ::Array[Elem]

  def uniq!: () -> ::Array[Elem]

  def unshift: (*Elem arg0) -> ::Array[Elem]

  def values_at: (*::Range[Integer] | Integer arg0) -> ::Array[Elem]

  def zip: [U] (*::Array[U] arg0) -> ::Array[[ Elem, U? ]]

  def |: (::Array[Elem] arg0) -> ::Array[Elem]

  def size: () -> Integer

  def slice: (::Range[Integer] arg0) -> ::Array[Elem]?
           | (Integer | Float arg0) -> Elem?
           | (Integer arg0, ?Integer arg1) -> ::Array[Elem]?

  def sum: () -> (Elem | Integer)
         | [T] () { (Elem arg0) -> T } -> (Integer | T)
         | [T] (?T arg0) -> (Elem | T)
         | [U] (?U arg0) { (Elem arg0) -> U } -> U

  def to_s: () -> String
end

Array::Elem: any

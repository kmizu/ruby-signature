module Enumerable
  def each: () { (Elem arg0) -> BasicObject } -> any
          | () -> self

  def all?: () -> T::Boolean
          | () { (Elem arg0) -> BasicObject } -> T::Boolean

  def `any?`: () -> T::Boolean
            | () { (Elem arg0) -> BasicObject } -> T::Boolean

  def collect: [U] () { (Elem arg0) -> U } -> ::Array[U]
             | () -> T::Enumerator[Elem]

  def collect_concat: [U] () { (Elem arg0) -> T::Enumerator[U] } -> ::Array[U]

  def count: () -> Integer
           | (?BasicObject arg0) -> Integer
           | () { (Elem arg0) -> BasicObject } -> Integer

  def cycle: (?Integer n) { (Elem arg0) -> BasicObject } -> NilClass
           | (?Integer n) -> T::Enumerator[Elem]

  def detect: (?Proc ifnone) { (Elem arg0) -> BasicObject } -> Elem?
            | (?Proc ifnone) -> T::Enumerator[Elem]

  def drop: (Integer n) -> ::Array[Elem]

  def drop_while: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
                | () -> T::Enumerator[Elem]

  def each_cons: (Integer n) { (::Array[Elem] arg0) -> BasicObject } -> NilClass
               | (Integer n) -> T::Enumerator[::Array[Elem]]

  def each_with_index: () { (Elem arg0, Integer arg1) -> BasicObject } -> T::Enumerable[Elem]
                     | () -> T::Enumerator[[ Elem, Integer ]]

  def each_with_object: [U] (U arg0) { (Elem arg0, any arg1) -> BasicObject } -> U
                      | [U] (U arg0) -> T::Enumerator[[ Elem, U ]]

  def entries: () -> ::Array[Elem]

  def find_all: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
              | () -> T::Enumerator[Elem]

  def find_index: (?BasicObject value) -> Integer?
                | () { (Elem arg0) -> BasicObject } -> Integer?
                | () -> T::Enumerator[Elem]

  def first: () -> Elem?
           | (?Integer n) -> ::Array[Elem]?

  def grep: (BasicObject arg0) -> ::Array[Elem]
          | [U] (BasicObject arg0) { (Elem arg0) -> U } -> ::Array[U]

  def group_by: [U] () { (Elem arg0) -> U } -> ::Hash[U, ::Array[Elem]]
              | () -> T::Enumerator[Elem]

  def `include?`: (BasicObject arg0) -> T::Boolean

  def inject: [Any] (?Any initial, ?Symbol arg0) -> any
            | (?Symbol arg0) -> any
            | (?Elem initial) { (Elem arg0, Elem arg1) -> Elem } -> Elem
            | () { (Elem arg0, Elem arg1) -> Elem } -> Elem?

  def max: () -> Elem?
         | () { (Elem arg0, Elem arg1) -> Integer } -> Elem?
         | (?Integer arg0) -> ::Array[Elem]
         | (?Integer arg0) { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def max_by: () -> T::Enumerator[Elem]
            | () { (Elem arg0) -> (Comparable | ::Array[BasicObject]) } -> Elem?
            | (?Integer arg0) -> T::Enumerator[Elem]
            | (?Integer arg0) { (Elem arg0) -> (Comparable | ::Array[BasicObject]) } -> ::Array[Elem]

  def min: () -> Elem?
         | () { (Elem arg0, Elem arg1) -> Integer } -> Elem?
         | (?Integer arg0) -> ::Array[Elem]
         | (?Integer arg0) { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def min_by: () -> T::Enumerator[Elem]
            | () { (Elem arg0) -> (Comparable | ::Array[BasicObject]) } -> Elem?
            | (?Integer arg0) -> T::Enumerator[Elem]
            | (?Integer arg0) { (Elem arg0) -> (Comparable | ::Array[BasicObject]) } -> ::Array[Elem]

  def minmax: () -> [ Elem?, Elem? ]
            | () { (Elem arg0, Elem arg1) -> Integer } -> [ Elem?, Elem? ]

  def minmax_by: () -> [ Elem?, Elem? ]
               | () { (Elem arg0) -> (Comparable | ::Array[BasicObject]) } -> T::Enumerator[Elem]

  def none?: () -> T::Boolean
           | () { (Elem arg0) -> BasicObject } -> T::Boolean

  def one?: () -> T::Boolean
          | () { (Elem arg0) -> BasicObject } -> T::Boolean

  def partition: () { (Elem arg0) -> BasicObject } -> [ ::Array[Elem], ::Array[Elem] ]
               | () -> T::Enumerator[Elem]

  def reject: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
            | () -> T::Enumerator[Elem]

  def reverse_each: () { (Elem arg0) -> BasicObject } -> T::Enumerator[Elem]
                  | () -> T::Enumerator[Elem]

  def sort: () -> ::Array[Elem]
          | () { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def sort_by: () { (Elem arg0) -> (Comparable | ::Array[BasicObject]) } -> ::Array[Elem]
             | () -> T::Enumerator[Elem]

  def take: (Integer n) -> ::Array[Elem]?

  def take_while: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
                | () -> T::Enumerator[Elem]

  def to_h: () -> ::Hash[any, any]

  def each_slice: (Integer n) { (::Array[Elem] arg0) -> BasicObject } -> NilClass
                | (Integer n) -> T::Enumerator[::Array[Elem]]

  def find: (?Proc ifnone) { (Elem arg0) -> BasicObject } -> Elem?
          | (?Proc ifnone) -> T::Enumerator[Elem]

  def flat_map: [U] () { (Elem arg0) -> U } -> U
              | () -> T::Enumerator[Elem]

  def map: [U] () { (Elem arg0) -> U } -> ::Array[U]
         | () -> T::Enumerator[Elem]

  def member?: (BasicObject arg0) -> T::Boolean

  def reduce: [Any] (?Any initial, ?Symbol arg0) -> any
            | (?Symbol arg0) -> any
            | (?Elem initial) { (Elem arg0, Elem arg1) -> Elem } -> Elem
            | () { (Elem arg0, Elem arg1) -> Elem } -> Elem?

  def select: () { (Elem arg0) -> BasicObject } -> ::Array[Elem]
            | () -> T::Enumerator[Elem]

  def to_a: () -> ::Array[Elem]

  def lazy: () -> Enumerator::Lazy[Elem]
end

Enumerable::Elem: any

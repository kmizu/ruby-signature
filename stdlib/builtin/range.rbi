class Range < Object
  include Enumerable

  def self.new: [U] (U from, U to, ?T::Boolean exclude_end) -> ::Range[U]

  def ==: (BasicObject obj) -> T::Boolean

  def ===: (BasicObject obj) -> T::Boolean

  def begin: () -> Elem

  def bsearch: [U] () { (Elem arg0) -> T::Boolean } -> U?

  def cover?: (BasicObject obj) -> T::Boolean

  def each: () { (Elem arg0) -> BasicObject } -> self
          | () -> T::Enumerator[Elem]

  def `end`: () -> Elem

  def `exclude_end?`: () -> T::Boolean

  def first: () -> Elem
           | (?Integer n) -> ::Array[Elem]

  def hash: () -> Integer

  def `include?`: (BasicObject obj) -> T::Boolean

  def initialize: (Elem _begin, Elem _end, ?T::Boolean exclude_end) -> void

  def inspect: () -> String

  def last: () -> Elem
          | (?Integer n) -> ::Array[Elem]

  def max: () -> Elem
         | () { (Elem arg0, Elem arg1) -> Integer } -> Elem
         | (?Integer n) -> ::Array[Elem]
         | (?Integer n) { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def min: () -> Elem
         | () { (Elem arg0, Elem arg1) -> Integer } -> Elem
         | (?Integer n) -> ::Array[Elem]
         | (?Integer n) { (Elem arg0, Elem arg1) -> Integer } -> ::Array[Elem]

  def size: () -> Integer?

  def step: (?Integer n) { (Elem arg0) -> BasicObject } -> self
          | (?Integer n) -> T::Enumerator[Elem]

  def to_s: () -> String

  def eql?: (BasicObject obj) -> T::Boolean

  def member?: (BasicObject obj) -> T::Boolean
end

Range::Elem: any

class Symbol < Object
  include Comparable

  def self.all_symbols: () -> ::Array[Symbol]

  def <=>: (Symbol other) -> Integer?

  def ==: (BasicObject obj) -> T::Boolean

  def =~: (BasicObject obj) -> Integer?

  def []: (Integer idx_or_range) -> String
        | (Integer idx_or_range, ?Integer n) -> String
        | (::Range[Integer] idx_or_range) -> String

  def capitalize: () -> Symbol

  def casecmp: (Symbol other) -> Integer?

  def casecmp?: (Symbol other) -> T::Boolean?

  def downcase: () -> Symbol

  def empty?: () -> T::Boolean

  def encoding: () -> Encoding

  def id2name: () -> String

  def inspect: () -> String

  def intern: () -> self

  def length: () -> Integer

  def match: (BasicObject obj) -> Integer?

  def match?: (*any args) -> any

  def next: () -> Symbol

  def succ: () -> Symbol

  def swapcase: () -> Symbol

  def to_proc: () -> Proc

  def upcase: () -> Symbol

  def size: () -> Integer

  def slice: (Integer idx_or_range) -> String
           | (Integer idx_or_range, ?Integer n) -> String
           | (::Range[Integer] idx_or_range) -> String

  def to_s: () -> String

  def to_sym: () -> self
end

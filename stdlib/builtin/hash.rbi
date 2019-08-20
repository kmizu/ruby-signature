class Hash < Object
  include Enumerable

  def self.[]: [U, V] (*::Array[[ U, V ]] arg0) -> ::Hash[U, V]

  def []: (K arg0) -> V?

  def []=: (K arg0, V arg1) -> V

  def assoc: (K arg0) -> ::Array[K | V]

  def clear: () -> ::Hash[K, V]

  def compare_by_identity: () -> ::Hash[K, V]

  def compare_by_identity?: () -> T::Boolean

  def default: (?K arg0) -> V?
             | (?K arg0) { (K arg0) -> V } -> V?

  def default=: (V arg0) -> V

  def delete: (K arg0) -> V?
            | [U] (K arg0) { (K arg0) -> U } -> (U | V)

  def delete_if: () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]
               | () -> T::Enumerator[[ K, V ]]

  def each: () { ([ K, V ] arg0) -> BasicObject } -> ::Hash[K, V]
          | () -> T::Enumerator[[ K, V ]]

  def each_key: () { (K arg0) -> BasicObject } -> ::Hash[K, V]
              | () -> T::Enumerator[[ K, V ]]

  def each_pair: () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]
               | () -> T::Enumerator[[ K, V ]]

  def each_value: () { (V arg0) -> BasicObject } -> ::Hash[K, V]
                | () -> T::Enumerator[[ K, V ]]

  def empty?: () -> T::Boolean

  def fetch: (K arg0) -> V
           | [X] (K arg0, ?X arg1) -> (V | X)
           | [X] (K arg0) { (K arg0) -> X } -> (V | X)

  def has_key?: (K arg0) -> T::Boolean

  def has_value?: (V arg0) -> T::Boolean

  def initialize: () -> Hash
                | (?BasicObject default) -> Hash
                | () { (Hash hash, BasicObject key) -> BasicObject } -> void

  def inspect: () -> String

  def invert: () -> ::Hash[V, K]

  def keep_if: () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]
             | () -> T::Enumerator[[ K, V ]]

  def key: (V arg0) -> K?

  def key?: (K arg0) -> T::Boolean

  def keys: () -> ::Array[K]

  def length: () -> Integer

  def member?: (K arg0) -> T::Boolean

  def merge: [A, B] (*::Hash[A, B] arg0) -> ::Hash[A | K, B | V]
           | [A, B] (*::Hash[A, B] arg0) { (K arg0, V arg1, B arg2) -> (V | B) } -> ::Hash[A | K, B | V]

  def rassoc: (K arg0) -> ::Array[K | V]

  def rehash: () -> ::Hash[K, V]

  def reject: () -> T::Enumerator[[ K, V ]]
            | () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]

  def reject!: () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]

  def select: () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]

  def select!: () { (K arg0, V arg1) -> BasicObject } -> ::Hash[K, V]

  def shift: () -> ::Array[K | V]

  def size: () -> Integer

  def store: (K arg0, V arg1) -> V

  def to_a: () -> ::Array[[ K, V ]]

  def to_hash: () -> ::Hash[K, V]

  def to_s: () -> String

  def value?: (V arg0) -> T::Boolean

  def values: () -> ::Array[V]

  def values_at: (*K arg0) -> ::Array[V]
end

Hash::K: any

Hash::V: any

Hash::Elem: any

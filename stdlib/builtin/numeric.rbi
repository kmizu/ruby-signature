class Numeric < Object
  include Comparable

  def %: (Numeric arg0) -> Numeric

  def +: (Numeric arg0) -> Numeric

  def +@: () -> Numeric

  def -: (Numeric arg0) -> Numeric

  def *: (Numeric arg0) -> Numeric

  def /: (Numeric arg0) -> Numeric

  def -@: () -> Numeric

  def <: (Numeric arg0) -> T::Boolean

  def <=: (Numeric arg0) -> T::Boolean

  def <=>: (Numeric arg0) -> Integer

  def >: (Numeric arg0) -> T::Boolean

  def >=: (Numeric arg0) -> T::Boolean

  def abs: () -> Numeric

  def abs2: () -> Numeric

  def angle: () -> Numeric

  def arg: () -> Numeric

  def ceil: () -> Integer
          | (?Integer digits) -> Numeric

  def coerce: (Numeric arg0) -> [ Numeric, Numeric ]

  def conj: () -> Numeric

  def conjugate: () -> Numeric

  def denominator: () -> Integer

  def div: (Numeric arg0) -> Integer

  def divmod: (Numeric arg0) -> [ Numeric, Numeric ]

  def eql?: (Numeric arg0) -> T::Boolean

  def fdiv: (Numeric arg0) -> Numeric

  def floor: () -> Integer
           | (?Integer digits) -> Numeric

  def i: () -> Complex

  def imag: () -> Numeric

  def imaginary: () -> Numeric

  def integer?: () -> T::Boolean

  def magnitude: () -> Numeric

  def modulo: (Numeric arg0) -> (Integer | Float | Rational | BigDecimal)

  def nonzero?: () -> self?

  def numerator: () -> Integer

  def phase: () -> Numeric

  def polar: () -> [ Numeric, Numeric ]

  def quo: (Numeric arg0) -> Numeric

  def real: () -> Numeric

  def real?: () -> Numeric

  def rect: () -> [ Numeric, Numeric ]

  def rectangular: () -> [ Numeric, Numeric ]

  def remainder: (Numeric arg0) -> (Integer | Float | Rational | BigDecimal)

  def round: (Numeric arg0) -> Numeric

  def singleton_method_added: (Symbol arg0) -> TypeError

  def step: (?Numeric? limit, ?Numeric step) { (Numeric arg0) -> BasicObject } -> Numeric
          | (?Numeric? limit, ?Numeric step) -> T::Enumerator[Numeric]

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_i: () -> Integer

  def to_int: () -> Integer

  def truncate: () -> Integer

  def zero?: () -> T::Boolean
end

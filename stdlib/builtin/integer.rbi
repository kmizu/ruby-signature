class Integer < Numeric
  def %: (Integer arg0) -> Integer
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Integer | Float arg0) -> (Integer | Float)

  def &: (Integer arg0) -> Integer

  def *: (Integer arg0) -> Integer
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> (Integer | Float)

  def **: (Integer arg0) -> Numeric
        | (Float arg0) -> Numeric
        | (Rational arg0) -> Numeric
        | (BigDecimal arg0) -> BigDecimal
        | (Complex arg0) -> Complex

  def +: (Integer arg0) -> Integer
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> (Integer | Float)

  def +@: () -> Integer

  def -: (Integer arg0) -> Integer
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> (Integer | Float)

  def -@: () -> Integer

  def /: (Integer arg0) -> Integer
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> (Integer | Float)

  def <: (Integer arg0) -> T::Boolean
       | (Float arg0) -> T::Boolean
       | (Rational arg0) -> T::Boolean
       | (BigDecimal arg0) -> T::Boolean

  def <<: (Integer arg0) -> Integer

  def <=: (Integer arg0) -> T::Boolean
        | (Float arg0) -> T::Boolean
        | (Rational arg0) -> T::Boolean
        | (BigDecimal arg0) -> T::Boolean

  def <=>: (Integer arg0) -> Integer
         | (Float arg0) -> Integer
         | (Rational arg0) -> Integer
         | (BigDecimal arg0) -> Integer

  def ==: (Object arg0) -> T::Boolean

  def ===: (Object arg0) -> T::Boolean

  def >: (Integer arg0) -> T::Boolean
       | (Float arg0) -> T::Boolean
       | (Rational arg0) -> T::Boolean
       | (BigDecimal arg0) -> T::Boolean

  def >=: (Integer arg0) -> T::Boolean
        | (Float arg0) -> T::Boolean
        | (Rational arg0) -> T::Boolean
        | (BigDecimal arg0) -> T::Boolean

  def >>: (Integer arg0) -> Integer

  def []: (Integer arg0) -> Integer
        | (Rational arg0) -> Integer
        | (Float arg0) -> Integer
        | (BigDecimal arg0) -> Integer

  def ^: (Integer arg0) -> Integer

  def abs: () -> Integer

  def abs2: () -> Integer

  def angle: () -> Numeric

  def arg: () -> Numeric

  def bit_length: () -> Integer

  def ceil: () -> Integer
          | (?Integer digits) -> Numeric

  def chr: () -> String
         | (?Encoding | String arg0) -> String

  def coerce: (Numeric arg0) -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def conj: () -> Integer

  def conjugate: () -> Integer

  def denominator: () -> Integer

  def div: (Integer arg0) -> Integer
         | (Float arg0) -> Integer
         | (Rational arg0) -> Integer
         | (BigDecimal arg0) -> Integer

  def divmod: (Integer | Float | Rational | BigDecimal arg0) -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def downto: (Integer limit) { (Integer arg0) -> BasicObject } -> Integer
            | (Integer limit) -> T::Enumerator[Integer]

  def eql?: (Object arg0) -> T::Boolean

  def equal?: (Object arg0) -> T::Boolean

  def even?: () -> T::Boolean

  def fdiv: (Integer arg0) -> Float
          | (Float arg0) -> Float
          | (Rational arg0) -> Float
          | (BigDecimal arg0) -> BigDecimal
          | (Complex arg0) -> Complex

  def floor: () -> Integer
           | (?Integer digits) -> Numeric

  def gcd: (Integer arg0) -> Integer

  def gcdlcm: (Integer arg0) -> [ Integer, Integer ]

  def hash: () -> Integer

  def imag: () -> Integer

  def imaginary: () -> Integer

  def inspect: () -> String

  def integer?: () -> TrueClass

  def lcm: (Integer arg0) -> Integer

  def magnitude: () -> Integer

  def modulo: (Integer arg0) -> Integer
            | (Float arg0) -> Float
            | (Rational arg0) -> Rational
            | (BigDecimal arg0) -> BigDecimal

  def next: () -> Integer

  def numerator: () -> Integer

  def odd?: () -> T::Boolean

  def ord: () -> Integer

  def phase: () -> Numeric

  def pred: () -> Integer

  def quo: (Integer arg0) -> Rational
         | (Float arg0) -> Float
         | (Rational arg0) -> Rational
         | (BigDecimal arg0) -> BigDecimal
         | (Complex arg0) -> Complex

  def rationalize: () -> Rational
                 | (?Numeric arg0) -> Rational

  def real: () -> Integer

  def real?: () -> TrueClass

  def remainder: (Integer arg0) -> Integer
               | (Float arg0) -> Float
               | (Rational arg0) -> Rational
               | (BigDecimal arg0) -> BigDecimal

  def round: () -> Integer
           | (?Numeric arg0) -> Numeric

  def size: () -> Integer

  def succ: () -> Integer

  def times: () { (Integer arg0) -> BasicObject } -> Integer
           | () -> T::Enumerator[Integer]

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_i: () -> Integer

  def to_int: () -> Integer

  def to_r: () -> Rational

  def to_s: (?Integer base) -> String

  def truncate: () -> Integer

  def upto: (Integer arg0) { (Integer arg0) -> BasicObject } -> Integer
          | (Integer arg0) -> T::Enumerator[Integer]

  def zero?: () -> T::Boolean

  def |: (Integer arg0) -> Integer

  def ~: () -> Integer
end

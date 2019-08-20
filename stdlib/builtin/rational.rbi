class Rational < Numeric
  def %: (Integer arg0) -> Rational
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal

  def *: (Integer arg0) -> Rational
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex

  def **: (Integer arg0) -> Numeric
        | (Float arg0) -> Numeric
        | (Rational arg0) -> Numeric
        | (BigDecimal arg0) -> BigDecimal
        | (Complex arg0) -> Complex

  def +: (Integer arg0) -> Rational
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex

  def +@: () -> Rational

  def -: (Integer arg0) -> Rational
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex

  def -@: () -> Rational

  def /: (Integer arg0) -> Rational
       | (Float arg0) -> Float
       | (Rational arg0) -> Rational
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex

  def <: (Integer arg0) -> T::Boolean
       | (Float arg0) -> T::Boolean
       | (Rational arg0) -> T::Boolean
       | (BigDecimal arg0) -> T::Boolean

  def <=: (Integer arg0) -> T::Boolean
        | (Float arg0) -> T::Boolean
        | (Rational arg0) -> T::Boolean
        | (BigDecimal arg0) -> T::Boolean

  def <=>: (Integer arg0) -> Integer
         | (Float arg0) -> Integer
         | (Rational arg0) -> Integer
         | (BigDecimal arg0) -> Integer

  def ==: (Object arg0) -> T::Boolean

  def >: (Integer arg0) -> T::Boolean
       | (Float arg0) -> T::Boolean
       | (Rational arg0) -> T::Boolean
       | (BigDecimal arg0) -> T::Boolean

  def >=: (Integer arg0) -> T::Boolean
        | (Float arg0) -> T::Boolean
        | (Rational arg0) -> T::Boolean
        | (BigDecimal arg0) -> T::Boolean

  def abs: () -> Rational

  def abs2: () -> Rational

  def angle: () -> Numeric

  def arg: () -> Numeric

  def ceil: () -> Integer
          | (?Integer digits) -> Numeric

  def coerce: (Integer arg0) -> [ Rational, Rational ]
            | (Float arg0) -> [ Float, Float ]
            | (Rational arg0) -> [ Rational, Rational ]
            | (Complex arg0) -> [ Numeric, Numeric ]

  def conj: () -> Rational

  def conjugate: () -> Rational

  def denominator: () -> Integer

  def div: (Integer arg0) -> Integer
         | (Float arg0) -> Integer
         | (Rational arg0) -> Integer
         | (BigDecimal arg0) -> Integer

  def divmod: (Integer | Float | Rational | BigDecimal arg0) -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def equal?: (Object arg0) -> T::Boolean

  def fdiv: (Integer arg0) -> Float
          | (Float arg0) -> Float
          | (Rational arg0) -> Float
          | (BigDecimal arg0) -> Float
          | (Complex arg0) -> Float

  def floor: () -> Integer
           | (?Integer digits) -> Numeric

  def hash: () -> Integer

  def imag: () -> Integer

  def imaginary: () -> Integer

  def inspect: () -> String

  def modulo: (Integer arg0) -> Rational
            | (Float arg0) -> Float
            | (Rational arg0) -> Rational
            | (BigDecimal arg0) -> BigDecimal

  def numerator: () -> Integer

  def phase: () -> Numeric

  def quo: (Integer arg0) -> Rational
         | (Float arg0) -> Float
         | (Rational arg0) -> Rational
         | (BigDecimal arg0) -> BigDecimal
         | (Complex arg0) -> Complex

  def rationalize: () -> Rational
                 | (?Numeric arg0) -> Rational

  def real: () -> Rational

  def real?: () -> TrueClass

  def round: () -> Integer
           | (?Integer arg0) -> Numeric

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_i: () -> Integer

  def to_r: () -> Rational

  def to_s: () -> String

  def truncate: () -> Integer
              | (?Integer arg0) -> Rational

  def zero?: () -> T::Boolean
end

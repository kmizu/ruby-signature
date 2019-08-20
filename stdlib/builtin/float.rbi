class Float < Numeric
  def %: (Integer arg0) -> Float
       | (Float arg0) -> Float
       | (Rational arg0) -> Float
       | (BigDecimal arg0) -> BigDecimal

  def *: (Integer arg0) -> Float
       | (Float arg0) -> Float
       | (Rational arg0) -> Float
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> Float

  def **: (Integer arg0) -> Float
        | (Float arg0) -> Float
        | (Rational arg0) -> Float
        | (BigDecimal arg0) -> BigDecimal
        | (Complex arg0) -> Complex

  def +: (Integer arg0) -> Float
       | (Float arg0) -> Float
       | (Rational arg0) -> Float
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> Float

  def +@: () -> Float

  def -: (Integer arg0) -> Float
       | (Float arg0) -> Float
       | (Rational arg0) -> Float
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> Float

  def -@: () -> Float

  def /: (Integer arg0) -> Float
       | (Float arg0) -> Float
       | (Rational arg0) -> Float
       | (BigDecimal arg0) -> BigDecimal
       | (Complex arg0) -> Complex
       | (Integer | Float arg0) -> Float

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

  def ===: (Object arg0) -> T::Boolean

  def >: (Integer arg0) -> T::Boolean
       | (Float arg0) -> T::Boolean
       | (Rational arg0) -> T::Boolean
       | (BigDecimal arg0) -> T::Boolean

  def >=: (Integer arg0) -> T::Boolean
        | (Float arg0) -> T::Boolean
        | (Rational arg0) -> T::Boolean
        | (BigDecimal arg0) -> T::Boolean

  def abs: () -> Float

  def abs2: () -> Float

  def angle: () -> (Integer | Float)

  def arg: () -> (Integer | Float)

  def ceil: () -> Integer
          | (?Integer digits) -> Numeric

  def coerce: (Integer | Float | Rational | BigDecimal arg0) -> [ Float, Float ]
            | (Numeric arg0) -> [ Float, Float ]

  def conj: () -> Float

  def conjugate: () -> Float

  def denominator: () -> Integer

  def div: (Integer arg0) -> Integer
         | (Float arg0) -> Integer
         | (Rational arg0) -> Integer
         | (BigDecimal arg0) -> Integer

  def divmod: (Integer | Float | Rational | BigDecimal arg0) -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def eql?: (Object arg0) -> T::Boolean

  def equal?: (Object arg0) -> T::Boolean

  def fdiv: (Integer arg0) -> Float
          | (Float arg0) -> Float
          | (Rational arg0) -> Float
          | (BigDecimal arg0) -> BigDecimal
          | (Complex arg0) -> Complex

  def finite?: () -> T::Boolean

  def floor: () -> Integer
           | (?Integer digits) -> Numeric

  def hash: () -> Integer

  def imag: () -> Integer

  def imaginary: () -> Integer

  def infinite?: () -> Object

  def inspect: () -> String

  def magnitude: () -> Float

  def modulo: (Integer arg0) -> Float
            | (Float arg0) -> Float
            | (Rational arg0) -> Float
            | (BigDecimal arg0) -> BigDecimal

  def nan?: () -> T::Boolean

  def next_float: () -> Float

  def numerator: () -> Integer

  def phase: () -> (Integer | Float)

  def prev_float: () -> Float

  def quo: (Integer arg0) -> Float
         | (Float arg0) -> Float
         | (Rational arg0) -> Float
         | (BigDecimal arg0) -> BigDecimal
         | (Complex arg0) -> Complex

  def rationalize: () -> Rational
                 | (?Numeric arg0) -> Rational

  def real: () -> Float

  def real?: () -> TrueClass

  def round: () -> Integer
           | (?Numeric arg0) -> (Integer | Float)

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_i: () -> Integer

  def to_int: () -> Integer

  def to_r: () -> Rational

  def to_s: (?Integer base) -> String

  def truncate: () -> Integer
              | (?Integer arg0) -> (Integer | Float)

  def zero?: () -> T::Boolean
end

Float::DIG: Integer

Float::EPSILON: Float

Float::INFINITY: Float

Float::MANT_DIG: Integer

Float::MAX: Float

Float::MAX_10_EXP: Integer

Float::MAX_EXP: Integer

Float::MIN: Float

Float::MIN_10_EXP: Integer

Float::MIN_EXP: Integer

Float::NAN: Float

Float::RADIX: Integer

Float::ROUNDS: Integer

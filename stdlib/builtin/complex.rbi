class Complex < Numeric
  def *: (Integer arg0) -> Complex
       | (Float arg0) -> Complex
       | (Rational arg0) -> Complex
       | (BigDecimal arg0) -> Complex
       | (Complex arg0) -> Complex

  def **: (Integer arg0) -> Complex
        | (Float arg0) -> Complex
        | (Rational arg0) -> Complex
        | (BigDecimal arg0) -> Complex
        | (Complex arg0) -> Complex

  def +: (Integer arg0) -> Complex
       | (Float arg0) -> Complex
       | (Rational arg0) -> Complex
       | (BigDecimal arg0) -> Complex
       | (Complex arg0) -> Complex

  def +@: () -> Complex

  def -: (Integer arg0) -> Complex
       | (Float arg0) -> Complex
       | (Rational arg0) -> Complex
       | (BigDecimal arg0) -> Complex
       | (Complex arg0) -> Complex

  def -@: () -> Complex

  def /: (Integer arg0) -> Complex
       | (Float arg0) -> Complex
       | (Rational arg0) -> Complex
       | (BigDecimal arg0) -> Complex
       | (Complex arg0) -> Complex

  def ==: (Object arg0) -> T::Boolean

  def abs: () -> Numeric

  def abs2: () -> Numeric

  def angle: () -> Float

  def arg: () -> Float

  def coerce: (Numeric arg0) -> [ Complex, Complex ]

  def conj: () -> Complex

  def conjugate: () -> Complex

  def denominator: () -> Integer

  def eql?: (Object arg0) -> T::Boolean

  def equal?: (Object arg0) -> T::Boolean

  def fdiv: (Numeric arg0) -> Complex

  def hash: () -> Integer

  def imag: () -> (Integer | Float | Rational | BigDecimal)

  def imaginary: () -> (Integer | Float | Rational | BigDecimal)

  def inspect: () -> String

  def magnitude: () -> (Integer | Float | Rational | BigDecimal)

  def numerator: () -> Complex

  def phase: () -> Float

  def polar: () -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def quo: (Integer arg0) -> Complex
         | (Float arg0) -> Complex
         | (Rational arg0) -> Complex
         | (BigDecimal arg0) -> BigDecimal
         | (Complex arg0) -> Complex

  def rationalize: () -> Rational
                 | (?Numeric arg0) -> Rational

  def real: () -> (Integer | Float | Rational | BigDecimal)

  def real?: () -> FalseClass

  def rect: () -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def rectangular: () -> [ Integer | Float | Rational | BigDecimal, Integer | Float | Rational | BigDecimal ]

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_i: () -> Integer

  def to_r: () -> Rational

  def to_s: () -> String

  def zero?: () -> T::Boolean
end

Complex::I: Complex

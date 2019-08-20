class NilClass < Object
  def &: (BasicObject obj) -> FalseClass

  def ^: (BasicObject obj) -> T::Boolean

  def rationalize: () -> Rational

  def to_a: () -> any

  def to_c: () -> Complex

  def to_f: () -> Float

  def to_h: () -> ::Hash[any, any]

  def to_r: () -> Rational

  def |: (BasicObject obj) -> T::Boolean

  def `nil?`: () -> TrueClass
end

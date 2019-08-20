class Fiber < Object
  def current: () -> Fiber

  def alive?: () -> T::Boolean
end

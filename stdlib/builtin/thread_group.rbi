class ThreadGroup < Object
  def add: (Thread thread) -> ThreadGroup

  def enclose: () -> ThreadGroup

  def enclosed?: () -> T::Boolean

  def list: () -> ::Array[Thread]
end

ThreadGroup::Default: ThreadGroup

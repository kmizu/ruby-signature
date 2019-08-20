class Thread < Object
  def self.current: () -> Thread

  def self.main: () -> Thread

  def []: (String | Symbol key) -> any

  def []=: (String | Symbol key, any value) -> any

  def alive?: () -> T::Boolean

  def kill: () -> Thread?

  def abort_on_exception: () -> T::Boolean

  def abort_on_exception=: (T::Boolean abort_on_exception) -> any

  def add_trace_func: (any proc) -> any

  def backtrace: (*any args) -> ::Array[any]

  def backtrace_locations: (*any args) -> ::Array[any]?

  def exit: () -> Thread?

  def fetch: (*any sym) -> any

  def group: () -> ThreadGroup?

  def initialize: (*any args) -> Thread

  def join: (*any limit) -> Thread

  def key?: (Symbol sym) -> T::Boolean

  def keys: () -> ::Array[Symbol]

  def name: () -> String

  def name=: (any name) -> any

  def pending_interrupt?: (*any args) -> T::Boolean

  def priority: () -> Integer

  def priority=: (Integer priority) -> any

  def report_on_exception: () -> T::Boolean

  def report_on_exception=: (T::Boolean report_on_exception) -> any

  def run: () -> Thread

  def safe_level: () -> Integer

  def status: () -> (String | T::Boolean)?

  def `stop?`: () -> T::Boolean

  def terminate: () -> Thread?

  def thread_variable?: (String | Symbol key) -> T::Boolean

  def thread_variable_get: (any key) -> any

  def thread_variable_set: (any key, any value) -> any

  def thread_variables: () -> ::Array[Symbol]

  def value: () -> Object

  def wakeup: () -> Thread

  def self.abort_on_exception: () -> any

  def self.abort_on_exception=: (any abort_on_exception) -> any

  def self.exclusive: () { () -> any } -> any

  def self.exit: () -> any

  def self.fork: (*any args) -> any

  def self.handle_interrupt: (any hash) -> any

  def self.kill: (Thread thread) -> any

  def self.list: () -> any

  def self.pass: () -> any

  def self.pending_interrupt?: (*any args) -> T::Boolean

  def self.report_on_exception: () -> any

  def self.report_on_exception=: (any report_on_exception) -> any

  def self.start: (*any args) -> any

  def self.`stop`: () -> any
end

class Thread::Backtrace < Object
end

class Thread::Backtrace::Location
  def absolute_path: () -> String?

  def base_label: () -> String?

  def label: () -> String?

  def lineno: () -> Integer

  def path: () -> String?
end

class Thread::ConditionVariable < Object
  def broadcast: () -> any

  def marshal_dump: () -> any

  def signal: () -> any

  def wait: (*any _) -> any
end

class Thread::Mutex < Object
  def lock: () -> any

  def locked?: () -> T::Boolean

  def owned?: () -> T::Boolean

  def synchronize: () -> any

  def try_lock: () -> T::Boolean

  def unlock: () -> any
end

class Thread::Queue < Object
  def <<: (any obj) -> any

  def clear: () -> any

  def close: () -> any

  def closed?: () -> T::Boolean

  def deq: (*any args) -> any

  def empty?: () -> T::Boolean

  def enq: (any obj) -> any

  def length: () -> Integer

  def marshal_dump: () -> any

  def num_waiting: () -> any

  def pop: (*any args) -> any

  def push: (any obj) -> any

  def shift: (*any args) -> any

  def size: () -> Integer
end

class Thread::SizedQueue < Thread::Queue
  def <<: (*any args) -> any

  def enq: (*any args) -> any

  def initialize: (any max) -> SizedQueue

  def max: () -> Integer

  def max=: (Integer max) -> any

  def push: (*any args) -> any
end

ConditionVariable: any

Mutex: any

Queue: any

SizedQueue: any

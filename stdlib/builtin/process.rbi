module Process
  def self.argv0: () -> String

  def self.clock_getres: (Symbol | Integer clock_id, ?Symbol unit) -> (Float | Integer)

  def self.clock_gettime: (Symbol | Integer clock_id, ?Symbol unit) -> (Float | Integer)

  def self.daemon: (?BasicObject nochdir, ?BasicObject noclose) -> Integer

  def self.detach: (Integer pid) -> Thread

  def self.egid: () -> Integer

  def self.egid=: (Integer arg0) -> Integer

  def self.euid: () -> Integer

  def self.euid=: (Integer arg0) -> Integer

  def self.getpgid: (Integer pid) -> Integer

  def self.getpgrp: () -> Integer

  def self.getpriority: (Integer kind, Integer arg0) -> Integer

  def self.getrlimit: (Symbol | String | Integer resource) -> [ Integer, Integer ]

  def self.getsid: (?Integer pid) -> Integer

  def self.gid: () -> Integer

  def self.gid=: (Integer arg0) -> Integer

  def self.groups: () -> ::Array[Integer]

  def self.groups=: (::Array[Integer] arg0) -> ::Array[Integer]

  def self.initgroups: (String username, Integer gid) -> ::Array[Integer]

  def self.kill: (Integer | Symbol | String signal, *Integer pids) -> Integer

  def self.maxgroups: () -> Integer

  def self.maxgroups=: (Integer arg0) -> Integer

  def self.pid: () -> Integer

  def self.ppid: () -> Integer

  def self.setpgid: (Integer pid, Integer arg0) -> Integer

  def self.setpriority: (Integer kind, Integer arg0, Integer priority) -> Integer

  def self.setproctitle: (String arg0) -> String

  def self.setrlimit: (Symbol | String | Integer resource, Integer cur_limit, ?Integer max_limit) -> NilClass

  def self.setsid: () -> Integer

  def self.times: () -> Process::Tms

  def self.uid: () -> Integer

  def self.uid=: (Integer user) -> Integer

  def self.wait: (?Integer pid, ?Integer flags) -> Integer

  def self.wait2: (?Integer pid, ?Integer flags) -> [ Integer, Process::Status ]

  def self.waitall: () -> ::Array[[ Integer, Process::Status ]]

  def self.waitpid: (?Integer pid, ?Integer flags) -> Integer

  def self.waitpid2: (?Integer pid, ?Integer flags) -> [ Integer, Process::Status ]
end

Process::CLOCK_BOOTTIME: Integer

Process::CLOCK_BOOTTIME_ALARM: Integer

Process::CLOCK_MONOTONIC: Integer

Process::CLOCK_MONOTONIC_COARSE: Integer

Process::CLOCK_MONOTONIC_RAW: Integer

Process::CLOCK_PROCESS_CPUTIME_ID: Integer

Process::CLOCK_REALTIME: Integer

Process::CLOCK_REALTIME_ALARM: Integer

Process::CLOCK_REALTIME_COARSE: Integer

Process::CLOCK_THREAD_CPUTIME_ID: Integer

Process::PRIO_PGRP: Integer

Process::PRIO_PROCESS: Integer

Process::PRIO_USER: Integer

Process::RLIMIT_AS: Integer

Process::RLIMIT_CORE: Integer

Process::RLIMIT_CPU: Integer

Process::RLIMIT_DATA: Integer

Process::RLIMIT_FSIZE: Integer

Process::RLIMIT_MEMLOCK: Integer

Process::RLIMIT_MSGQUEUE: Integer

Process::RLIMIT_NICE: Integer

Process::RLIMIT_NOFILE: Integer

Process::RLIMIT_NPROC: Integer

Process::RLIMIT_RSS: Integer

Process::RLIMIT_RTPRIO: Integer

Process::RLIMIT_RTTIME: Integer

Process::RLIMIT_SIGPENDING: Integer

Process::RLIMIT_STACK: Integer

Process::RLIM_INFINITY: Integer

Process::RLIM_SAVED_CUR: Integer

Process::RLIM_SAVED_MAX: Integer

Process::WNOHANG: Integer

Process::WUNTRACED: Integer

module Process::GID
  def self.change_privilege: (Integer group) -> Integer

  def self.eid: () -> Integer

  def self.from_name: (String name) -> Integer

  def self.grant_privilege: (Integer group) -> Integer

  def self.re_exchange: () -> Integer

  def self.re_exchangeable?: () -> T::Boolean

  def self.rid: () -> Integer

  def self.sid_available?: () -> T::Boolean

  def self.switch: () -> Integer
                 | [T] () { () -> T } -> T

  def self.eid=: (Integer group) -> Integer
end

class Process::Status < Object
  def &: (Integer num) -> Integer

  def ==: (BasicObject other) -> T::Boolean

  def >>: (Integer num) -> Integer

  def coredump?: () -> T::Boolean

  def exited?: () -> T::Boolean

  def exitstatus: () -> Integer?

  def inspect: () -> String

  def pid: () -> Integer

  def signaled?: () -> T::Boolean

  def stopped?: () -> T::Boolean

  def stopsig: () -> Integer?

  def success?: () -> T::Boolean

  def termsig: () -> Integer?

  def to_i: () -> Integer

  def to_s: () -> String
end

module Process::Sys
  def self.geteuid: () -> Integer

  def self.getgid: () -> Integer

  def self.getuid: () -> Integer

  def self.issetugid: () -> T::Boolean

  def self.setegid: (Integer group) -> NilClass

  def self.seteuid: (Integer user) -> NilClass

  def self.setgid: (Integer group) -> NilClass

  def self.setregid: (Integer rid, Integer eid) -> NilClass

  def self.setresgid: (Integer rid, Integer eid, Integer sid) -> NilClass

  def self.setresuid: (Integer rid, Integer eid, Integer sid) -> NilClass

  def self.setreuid: (Integer rid, Integer eid) -> NilClass

  def self.setrgid: (Integer group) -> NilClass

  def self.setruid: (Integer user) -> NilClass

  def self.setuid: (Integer user) -> NilClass
end

module Process::UID
  def self.change_privilege: (Integer user) -> Integer

  def self.eid: () -> Integer

  def self.from_name: (String name) -> Integer

  def self.grant_privilege: (Integer user) -> Integer

  def self.re_exchange: () -> Integer

  def self.re_exchangeable?: () -> T::Boolean

  def self.rid: () -> Integer

  def self.sid_available?: () -> T::Boolean

  def self.switch: () -> Integer
                 | [T] () { () -> T } -> T

  def self.eid=: (Integer user) -> Integer
end

class Process::Tms < Struct
end

Process::Tms::Elem: any

class Process::Waiter < Thread
  def pid: () -> Integer
end

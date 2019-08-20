class File < IO
  def self.absolute_path: (String file, ?String dir) -> String

  def self.atime: (BasicObject file) -> Time

  def self.basename: (String file, ?String suffix) -> String

  def self.binread: (String arg0) -> String
                  | (String arg0, ?Integer arg1) -> String
                  | (String arg0, ?Integer arg1, ?Integer arg2) -> String

  def self.birthtime: (BasicObject file) -> Time

  def self.blockdev?: (String | IO file) -> T::Boolean

  def self.chardev?: (String | IO file) -> T::Boolean

  def self.chmod: (Integer mode, *String files) -> Integer

  def self.chown: (Integer owner, Integer group, *String files) -> Integer

  def self.ctime: (BasicObject file) -> Time

  def self.delete: (*String files) -> Integer

  def self.directory?: (String | IO file) -> T::Boolean

  def self.dirname: (String file) -> String

  def self.executable?: (String file) -> T::Boolean

  def self.executable_real?: (String file) -> T::Boolean

  def self.exist?: (BasicObject file) -> T::Boolean

  def self.expand_path: (BasicObject file, ?BasicObject dir) -> String

  def self.extname: (String path) -> String

  def self.file?: (String | IO file) -> T::Boolean

  def self.fnmatch: (String pattern, String path, ?Integer flags) -> T::Boolean

  def self.`ftype`: (String file) -> String

  def self.grpowned?: (String | IO file) -> T::Boolean

  def self.identical?: (String | IO file_1, String | IO file_2) -> T::Boolean

  def self.join: (*BasicObject arg0) -> String

  def self.lchmod: (Integer mode, *String files) -> Integer

  def self.lchown: (Integer owner, Integer group, *String files) -> Integer

  def self.link: (String old, String new) -> Integer

  def self.lstat: (String file) -> File::Stat

  def self.mtime: (BasicObject file) -> Time

  def self.owned?: (String file) -> T::Boolean

  def self.path: (String path) -> String

  def self.pipe?: (String file) -> T::Boolean

  def self.readable?: (String file) -> T::Boolean

  def self.readable_real?: (String file) -> T::Boolean

  def self.readlink: (String link) -> String

  def self.realdirpath: (String pathname, ?String dir) -> String

  def self.realpath: (String pathname, ?String dir) -> String

  def self.rename: (String old, String new) -> Integer

  def self.setgid?: (String file) -> T::Boolean

  def self.setuid?: (String file) -> T::Boolean

  def self.size: (String | IO file) -> Integer

  def self.size?: (String | IO file) -> Integer?

  def self.socket?: (String | IO file) -> T::Boolean

  def self.split: (String file) -> [ String, String ]

  def self.stat: (BasicObject file) -> File::Stat

  def self.sticky?: (String file) -> T::Boolean

  def self.symlink: (String old, String new) -> Integer

  def self.symlink?: (String file) -> T::Boolean

  def self.truncate: (String file, Integer arg0) -> Integer

  def self.umask: (?Integer arg0) -> Integer

  def self.utime: (Time atime, Time mtime, *String files) -> Integer

  def self.world_readable?: (String | IO file) -> Integer?

  def self.world_writable?: (String | IO file) -> Integer?

  def self.writable?: (String file) -> Integer?

  def self.writable_real?: (String file) -> Integer?

  def self.zero?: (String | IO file) -> Integer?

  def atime: () -> Time

  def birthtime: () -> Time

  def chmod: (Integer mode) -> Integer

  def chown: (Integer owner, Integer group) -> Integer

  def ctime: () -> Time

  def flock: (Integer arg0) -> (Integer | TrueClass | FalseClass)

  def initialize: (String file, ?String mode, ?String perm, ?Integer opt) -> void

  def lstat: () -> File::Stat

  def mtime: () -> Time

  def path: () -> String

  def size: () -> Integer

  def truncate: (Integer arg0) -> Integer

  def self.fnmatch?: (String pattern, String path, ?Integer flags) -> T::Boolean

  def self.unlink: (*String files) -> Integer

  def to_path: () -> String
end

File::ALT_SEPARATOR: NilClass

File::APPEND: Integer

File::BINARY: Integer

File::CREAT: Integer

File::DIRECT: Integer

File::DSYNC: Integer

File::EXCL: Integer

File::FNM_CASEFOLD: Integer

File::FNM_DOTMATCH: Integer

File::FNM_EXTGLOB: Integer

File::FNM_NOESCAPE: Integer

File::FNM_PATHNAME: Integer

File::FNM_SHORTNAME: Integer

File::FNM_SYSCASE: Integer

File::LOCK_EX: Integer

File::LOCK_NB: Integer

File::LOCK_SH: Integer

File::LOCK_UN: Integer

File::NOATIME: Integer

File::NOCTTY: Integer

File::NOFOLLOW: Integer

File::NONBLOCK: Integer

File::NULL: String

File::PATH_SEPARATOR: String

File::RDONLY: Integer

File::RDWR: Integer

File::RSYNC: Integer

File::SEEK_CUR: Integer

File::SEEK_DATA: Integer

File::SEEK_END: Integer

File::SEEK_HOLE: Integer

File::SEEK_SET: Integer

File::SEPARATOR: String

File::SHARE_DELETE: Integer

File::SYNC: Integer

File::TMPFILE: Integer

File::TRUNC: Integer

File::WRONLY: Integer

File::Elem: any

module File::Constants
end

File::Constants::APPEND: Integer

File::Constants::BINARY: Integer

File::Constants::CREAT: Integer

File::Constants::DIRECT: Integer

File::Constants::DSYNC: Integer

File::Constants::EXCL: Integer

File::Constants::FNM_CASEFOLD: Integer

File::Constants::FNM_DOTMATCH: Integer

File::Constants::FNM_EXTGLOB: Integer

File::Constants::FNM_NOESCAPE: Integer

File::Constants::FNM_PATHNAME: Integer

File::Constants::FNM_SHORTNAME: Integer

File::Constants::FNM_SYSCASE: Integer

File::Constants::LOCK_EX: Integer

File::Constants::LOCK_NB: Integer

File::Constants::LOCK_SH: Integer

File::Constants::LOCK_UN: Integer

File::Constants::NOATIME: Integer

File::Constants::NOCTTY: Integer

File::Constants::NOFOLLOW: Integer

File::Constants::NONBLOCK: Integer

File::Constants::NULL: String

File::Constants::RDONLY: Integer

File::Constants::RDWR: Integer

File::Constants::RSYNC: Integer

File::Constants::SHARE_DELETE: Integer

File::Constants::SYNC: Integer

File::Constants::TMPFILE: Integer

File::Constants::TRUNC: Integer

File::Constants::WRONLY: Integer

class File::Stat < Object
  include Comparable

  def <=>: (File::Stat other) -> Integer?

  def atime: () -> Time

  def birthtime: () -> Time

  def blksize: () -> Integer?

  def blockdev?: () -> T::Boolean

  def blocks: () -> Integer?

  def chardev?: () -> T::Boolean

  def ctime: () -> Time

  def dev: () -> Integer

  def dev_major: () -> Integer

  def dev_minor: () -> Integer

  def directory?: () -> T::Boolean

  def executable?: () -> T::Boolean

  def executable_real?: () -> T::Boolean

  def file?: () -> T::Boolean

  def `ftype`: () -> String

  def gid: () -> Integer

  def grpowned?: () -> T::Boolean

  def initialize: (String file) -> Object

  def ino: () -> Integer

  def inspect: () -> String

  def mode: () -> Integer

  def mtime: () -> Time

  def nlink: () -> Integer

  def owned?: () -> T::Boolean

  def pipe?: () -> T::Boolean

  def rdev: () -> Integer?

  def rdev_major: () -> Integer

  def rdev_minor: () -> Integer

  def read: (?Integer length, ?String outbuf) -> String

  def readable?: () -> T::Boolean

  def readable_real?: () -> T::Boolean

  def setgid?: () -> T::Boolean

  def setuid?: () -> T::Boolean

  def size: () -> Integer

  def socket?: () -> T::Boolean

  def sticky?: () -> T::Boolean

  def symlink?: () -> T::Boolean

  def uid: () -> Integer

  def world_readable?: () -> Integer?

  def world_writable?: () -> Integer?

  def writable?: () -> T::Boolean

  def writable_real?: () -> T::Boolean

  def zero?: () -> T::Boolean
end

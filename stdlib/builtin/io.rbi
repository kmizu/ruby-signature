class IO < Object
  include File::Constants

  include Enumerable

  def <<: (BasicObject arg0) -> self

  def advise: (Symbol arg0, ?Integer offset, ?Integer len) -> NilClass

  def autoclose=: (T::Boolean arg0) -> T::Boolean

  def autoclose?: () -> T::Boolean

  def binmode: () -> self

  def binmode?: () -> T::Boolean

  def close: () -> NilClass

  def close_on_exec=: (T::Boolean arg0) -> T::Boolean

  def close_on_exec?: () -> T::Boolean

  def close_read: () -> NilClass

  def close_write: () -> NilClass

  def closed?: () -> T::Boolean

  def each: (?String sep, ?Integer limit) { (String arg0) -> BasicObject } -> self
          | (?String sep, ?Integer limit) -> T::Enumerator[String]

  def each_byte: () { (Integer arg0) -> BasicObject } -> self
               | () -> T::Enumerator[Integer]

  def each_char: () { (String arg0) -> BasicObject } -> self
               | () -> T::Enumerator[String]

  def each_codepoint: () { (Integer arg0) -> BasicObject } -> self
                    | () -> T::Enumerator[Integer]

  def eof: () -> T::Boolean

  def fcntl: (Integer integer_cmd, String | Integer arg) -> Integer

  def fdatasync: () -> Integer?

  def fileno: () -> Integer

  def flush: () -> self

  def fsync: () -> Integer?

  def getbyte: () -> Integer?

  def getc: () -> String?

  def gets: (?String sep, ?Integer limit) -> String?

  def initialize: (Integer fd, ?Integer mode, ?Integer opt) -> void

  def inspect: () -> String

  def internal_encoding: () -> Encoding

  def ioctl: (Integer integer_cmd, String | Integer arg) -> Integer

  def isatty: () -> T::Boolean

  def lineno: () -> Integer

  def lineno=: (Integer arg0) -> Integer

  def pid: () -> Integer

  def pos: () -> Integer

  def pos=: (Integer arg0) -> Integer

  def print: (*BasicObject arg0) -> NilClass

  def printf: (String format_string, *BasicObject arg0) -> NilClass

  def putc: (Numeric | String arg0) -> any

  def puts: (*BasicObject arg0) -> NilClass

  def read: (?Integer length, ?String outbuf) -> String?

  def read_nonblock: (Integer len) -> String
                   | (Integer len, ?String buf) -> String

  def readbyte: () -> Integer

  def readchar: () -> String

  def readline: (?String sep, ?Integer limit) -> String

  def readlines: (?String sep, ?Integer limit) -> ::Array[String]

  def readpartial: (Integer maxlen) -> String
                 | (Integer maxlen, ?String outbuf) -> String

  def reopen: (IO other_IO_or_path) -> IO
            | (String other_IO_or_path, ?String mode_str) -> IO

  def rewind: () -> Integer

  def seek: (Integer amount, ?Integer whence) -> Integer

  def set_encoding: (?String | Encoding ext_or_ext_int_enc) -> self
                  | (?String | Encoding ext_or_ext_int_enc, ?String | Encoding int_enc) -> self

  def stat: () -> File::Stat

  def sync: () -> T::Boolean

  def sync=: (T::Boolean arg0) -> T::Boolean

  def sysread: (Integer maxlen, String outbuf) -> String

  def sysseek: (Integer amount, ?Integer whence) -> Integer

  def syswrite: (String arg0) -> Integer

  def tell: () -> Integer

  def to_io: () -> self

  def tty?: () -> T::Boolean

  def ungetbyte: (String | Integer arg0) -> NilClass

  def ungetc: (String arg0) -> NilClass

  def write: (String arg0) -> Integer

  def self.binread: (String name, ?Integer length, ?Integer offset) -> String

  def self.binwrite: (String name, String arg0, ?Integer offset, ?external_encoding: String external_encoding, ?internal_encoding: String internal_encoding, ?encoding: String encoding, ?textmode: BasicObject textmode, ?binmode: BasicObject binmode, ?autoclose: BasicObject autoclose, ?mode: String mode) -> Integer

  def self.copy_stream: (String | IO src, String | IO dst, ?Integer copy_length, ?Integer src_offset) -> Integer

  def self.popen: (*any args) -> any

  def self.read: (String name, ?Integer length, ?Integer offset, ?external_encoding: String external_encoding, ?internal_encoding: String internal_encoding, ?encoding: String encoding, ?textmode: BasicObject textmode, ?binmode: BasicObject binmode, ?autoclose: BasicObject autoclose, ?mode: String mode) -> String

  def self.readlines: (String name, ?String sep, ?Integer limit, ?external_encoding: String external_encoding, ?internal_encoding: String internal_encoding, ?encoding: String encoding, ?textmode: BasicObject textmode, ?binmode: BasicObject binmode, ?autoclose: BasicObject autoclose, ?mode: String mode) -> ::Array[String]

  def self.select: (::Array[IO]? read_array, ?::Array[IO]? write_array, ?::Array[IO]? error_array, ?Integer? timeout) -> ::Array[::Array[IO]]?

  def self.sysopen: (String path, ?String mode, ?String perm) -> Integer

  def self.try_convert: (BasicObject arg0) -> IO?

  def self.write: (String name, String arg0, ?Integer offset, ?external_encoding: String external_encoding, ?internal_encoding: String internal_encoding, ?encoding: String encoding, ?textmode: BasicObject textmode, ?binmode: BasicObject binmode, ?autoclose: BasicObject autoclose, ?mode: String mode) -> Integer

  def self.for_fd: (Integer fd, ?Integer mode, ?Integer opt) -> self

  def bytes: () { (Integer arg0) -> BasicObject } -> self
           | () -> T::Enumerator[Integer]

  def chars: () { (String arg0) -> BasicObject } -> self
           | () -> T::Enumerator[String]

  def codepoints: () { (Integer arg0) -> BasicObject } -> self
                | () -> T::Enumerator[Integer]

  def each_line: (?String sep, ?Integer limit) { (String arg0) -> BasicObject } -> self
               | (?String sep, ?Integer limit) -> T::Enumerator[String]

  def eof?: () -> T::Boolean

  def lines: (?String sep, ?Integer limit) { (String arg0) -> BasicObject } -> self
           | (?String sep, ?Integer limit) -> T::Enumerator[String]

  def to_i: () -> Integer
end

IO::Elem: any

IO::APPEND: Integer

IO::BINARY: Integer

IO::CREAT: Integer

IO::DIRECT: Integer

IO::DSYNC: Integer

IO::EXCL: Integer

IO::FNM_CASEFOLD: Integer

IO::FNM_DOTMATCH: Integer

IO::FNM_EXTGLOB: Integer

IO::FNM_NOESCAPE: Integer

IO::FNM_PATHNAME: Integer

IO::FNM_SHORTNAME: Integer

IO::FNM_SYSCASE: Integer

IO::LOCK_EX: Integer

IO::LOCK_NB: Integer

IO::LOCK_SH: Integer

IO::LOCK_UN: Integer

IO::NOATIME: Integer

IO::NOCTTY: Integer

IO::NOFOLLOW: Integer

IO::NONBLOCK: Integer

IO::NULL: String

IO::RDONLY: Integer

IO::RDWR: Integer

IO::RSYNC: Integer

IO::SEEK_CUR: Integer

IO::SEEK_DATA: Integer

IO::SEEK_END: Integer

IO::SEEK_HOLE: Integer

IO::SEEK_SET: Integer

IO::SHARE_DELETE: Integer

IO::SYNC: Integer

IO::TMPFILE: Integer

IO::TRUNC: Integer

IO::WRONLY: Integer

class IO::EAGAINWaitReadable < Errno::EAGAIN
  include IO::WaitReadable
end

IO::EAGAINWaitReadable::Errno: Integer

class IO::EAGAINWaitWritable < Errno::EAGAIN
  include IO::WaitWritable
end

IO::EAGAINWaitWritable::Errno: Integer

class IO::EINPROGRESSWaitReadable < Errno::EINPROGRESS
  include IO::WaitReadable
end

IO::EINPROGRESSWaitReadable::Errno: Integer

class IO::EINPROGRESSWaitWritable < Errno::EINPROGRESS
  include IO::WaitWritable
end

IO::EINPROGRESSWaitWritable::Errno: Integer

module IO::WaitReadable
end

module IO::WaitWritable
end

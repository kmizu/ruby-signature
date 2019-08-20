class Dir < Object
  include Enumerable

  def self.chdir: (?String | Pathname arg0) -> Integer
                | [U] (?String | Pathname arg0) { (String arg0) -> U } -> U

  def self.chroot: (String arg0) -> Integer

  def self.delete: (String arg0) -> Integer

  def self.entries: (String arg0, ?Encoding arg1) -> ::Array[String]

  def self.exist?: (String file) -> T::Boolean

  def self.foreach: (String dir, ?Encoding arg0) { (String arg0) -> BasicObject } -> NilClass
                  | (String dir, ?Encoding arg0) -> T::Enumerator[String]

  def self.getwd: () -> String

  def self.glob: (String | ::Array[String] pattern, ?Integer flags) -> ::Array[String]
               | (String | ::Array[String] pattern, ?Integer flags) { (String arg0) -> BasicObject } -> NilClass

  def self.home: (?String arg0) -> String

  def self.mkdir: (String arg0, ?Integer arg1) -> Integer

  def self.open: (String arg0, ?Encoding arg1) -> Dir
               | [U] (String arg0, ?Encoding arg1) { (Dir arg0) -> U } -> U

  def self.pwd: () -> String

  def self.rmdir: (String arg0) -> Integer

  def self.unlink: (String arg0) -> Integer

  def close: () -> NilClass

  def each: () { (String arg0) -> BasicObject } -> self
          | () -> T::Enumerator[String]

  def fileno: () -> Integer

  def initialize: (String arg0, ?Encoding arg1) -> void

  def inspect: () -> String

  def path: () -> String?

  def pos: () -> Integer

  def pos=: (Integer arg0) -> Integer

  def read: () -> String?

  def rewind: () -> self

  def seek: (Integer arg0) -> self

  def tell: () -> Integer

  def to_path: () -> String?

  def self.[]: (String | ::Array[String] pattern, ?Integer flags) -> ::Array[String]
             | (String | ::Array[String] pattern, ?Integer flags) { (String arg0) -> BasicObject } -> NilClass
end

Dir::Elem: any

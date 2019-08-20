module FileTest
  def self.blockdev?: (String | IO file_name) -> T::Boolean

  def self.chardev?: (String | IO file_name) -> T::Boolean

  def self.directory?: (String | IO file_name) -> T::Boolean

  def self.empty?: (String | IO file_name) -> T::Boolean

  def self.executable?: (String | IO file_name) -> T::Boolean

  def self.executable_real?: (String | IO file_name) -> T::Boolean

  def self.exist?: (String | IO file_name) -> T::Boolean

  def self.exists?: (String | IO file_name) -> T::Boolean

  def self.file?: (String | IO file) -> T::Boolean

  def self.grpowned?: (String | IO file_name) -> T::Boolean

  def self.identical?: (String | IO file_1, String | IO file_2) -> T::Boolean

  def self.owned?: (String | IO file_name) -> T::Boolean

  def self.pipe?: (String | IO file_name) -> T::Boolean

  def self.readable?: (String | IO file_name) -> T::Boolean

  def self.readable_real?: (String | IO file_name) -> T::Boolean

  def self.setgid?: (String | IO file_name) -> T::Boolean

  def self.setuid?: (String | IO file_name) -> T::Boolean

  def self.size: (String | IO file_name) -> Integer

  def self.size?: (String | IO file_name) -> Integer?

  def self.socket?: (String | IO file_name) -> T::Boolean

  def self.sticky?: (String | IO file_name) -> T::Boolean

  def self.symlink?: (String | IO file_name) -> T::Boolean

  def self.world_readable?: (String | IO file_name) -> Integer?

  def self.world_writable?: (String | IO file_name) -> Integer?

  def self.writable?: (String | IO file_name) -> T::Boolean

  def self.writable_real?: (String | IO file_name) -> T::Boolean

  def self.zero?: (String | IO file_name) -> T::Boolean
end

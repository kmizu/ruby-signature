module Marshal
  def self.dump: (Object arg0, ?IO arg1, ?Integer arg2) -> Object
               | (Object arg0, ?Integer arg1) -> Object

  def self.load: (String arg0, ?Proc arg1) -> Object
end

Marshal::MAJOR_VERSION: Integer

Marshal::MINOR_VERSION: Integer

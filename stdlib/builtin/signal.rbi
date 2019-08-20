module Signal
  def self.list: () -> ::Hash[String, Integer]

  def self.signame: (Integer arg0) -> String?

  def self.trap: (Integer | String | Symbol signal, ?BasicObject command) -> (String | Proc)
               | (Integer | String | Symbol signal) { (Integer arg0) -> BasicObject } -> (String | Proc)
end

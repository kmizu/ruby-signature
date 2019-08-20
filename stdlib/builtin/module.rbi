class Module < Object
  def self.constants: () -> ::Array[Integer]

  def self.nesting: () -> ::Array[Module]

  def <: (Module other) -> T::Boolean?

  def <=: (Module other) -> T::Boolean?

  def <=>: (Module other) -> Integer?

  def ==: (BasicObject other) -> T::Boolean

  def ===: (BasicObject other) -> T::Boolean

  def >: (Module other) -> T::Boolean?

  def >=: (Module other) -> T::Boolean?

  def alias_method: (Symbol new_name, Symbol old_name) -> self

  def ancestors: () -> ::Array[Module]

  def append_features: (Module arg0) -> self

  def `attr_accessor`: (*Symbol | String arg0) -> NilClass

  def `attr_reader`: (*Symbol | String arg0) -> NilClass

  def `attr_writer`: (*Symbol | String arg0) -> NilClass

  def autoload: (Symbol _module, String filename) -> NilClass

  def autoload?: (Symbol name) -> String?

  def class_eval: (String arg0, ?String filename, ?Integer lineno) -> any
                | [U] (any arg0) { (any m) -> U } -> U

  def class_exec: (*BasicObject args) { () -> any } -> any

  def class_variable_defined?: (Symbol | String arg0) -> T::Boolean

  def class_variable_get: (Symbol | String arg0) -> any

  def class_variable_set: (Symbol | String arg0, BasicObject arg1) -> any

  def class_variables: (?T::Boolean inherit) -> ::Array[Symbol]

  def const_defined?: (Symbol | String arg0, ?T::Boolean inherit) -> T::Boolean

  def const_get: (Symbol | String arg0, ?T::Boolean inherit) -> any

  def const_missing: (Symbol arg0) -> any

  def const_set: (Symbol | String arg0, BasicObject arg1) -> any

  def constants: (?T::Boolean inherit) -> ::Array[Symbol]

  def define_method: (Symbol | String arg0, ?Proc | Method | UnboundMethod arg1) -> Symbol
                   | (Symbol | String arg0) { () -> any } -> Symbol

  def eql?: (BasicObject other) -> T::Boolean

  def equal?: (BasicObject other) -> T::Boolean

  def extend_object: (BasicObject arg0) -> any

  def extended: (Module othermod) -> any

  def freeze: () -> self

  def `include`: (*Module arg0) -> self

  def `include?`: (Module arg0) -> T::Boolean

  def included: (Module othermod) -> any

  def included_modules: () -> ::Array[Module]

  def initialize: () -> Object
                | () { (Module arg0) -> BasicObject } -> void

  def instance_method: (Symbol arg0) -> UnboundMethod

  def instance_methods: (?T::Boolean include_super) -> ::Array[Symbol]

  def method_added: (Symbol meth) -> any

  def method_defined?: (Symbol | String arg0) -> T::Boolean

  def method_removed: (Symbol method_name) -> any

  def module_eval: (String arg0, ?String filename, ?Integer lineno) -> any
                 | [U] (any arg0) { (any m) -> U } -> U

  def module_exec: (*BasicObject args) { () -> any } -> any

  def module_function: (*Symbol | String arg0) -> self

  def name: () -> String

  def `prepend`: (*Module arg0) -> self

  def prepend_features: (Module arg0) -> self

  def prepended: (Module othermod) -> any

  def `private`: (*Symbol | String arg0) -> self

  def private_class_method: (*Symbol | String arg0) -> self

  def private_constant: (*Symbol arg0) -> self

  def private_instance_methods: (?T::Boolean include_super) -> ::Array[Symbol]

  def private_method_defined?: (Symbol | String arg0) -> T::Boolean

  def protected: (*Symbol | String arg0) -> self

  def protected_instance_methods: (?T::Boolean include_super) -> ::Array[Symbol]

  def protected_method_defined?: (Symbol | String arg0) -> T::Boolean

  def `public`: (*Symbol | String arg0) -> self

  def public_class_method: (*Symbol | String arg0) -> self

  def public_constant: (*Symbol arg0) -> self

  def public_instance_method: (Symbol arg0) -> UnboundMethod

  def public_instance_methods: (?T::Boolean include_super) -> ::Array[Symbol]

  def public_method_defined?: (Symbol | String arg0) -> T::Boolean

  def refine: (Class arg0) { (any arg0) -> BasicObject } -> self

  def remove_class_variable: (Symbol arg0) -> any

  def remove_const: (Symbol arg0) -> any

  def remove_method: (Symbol | String arg0) -> self

  def `singleton_class?`: () -> T::Boolean

  def to_s: () -> String

  def undefMethod: (Symbol | String arg0) -> self

  def using: (Module arg0) -> self

  def inspect: () -> String

  def attr: (*Symbol | String arg0) -> NilClass
end

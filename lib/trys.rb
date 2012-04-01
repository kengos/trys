require "trys/version"

unless Object.method_defined?(:try)
  require 'trys/extensions/object'
end

module Trys
  def trys(*a, &b)
    if a.size > 1
      eval("self.try(a[0]).trys(#{a[1..-1].inspect[1..-2]}, &b)")
    elsif block_given?
      self.try(a[0]).try(&b)
    else
      self.try(a[0])
    end
  end
end

class Object
  include ::Trys
end

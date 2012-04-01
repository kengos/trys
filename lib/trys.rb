require "trys/version"

unless Object.method_defined?(:try)
  require 'trys/extensions/object'
end

module Trys
  def trys(*a)
    a.size > 1 ? eval("self.try(a[0]).trys(#{a[1..-1].inspect[1..-2]})") : self.try(a[0])
  end
end

class Object
  include ::Trys
end

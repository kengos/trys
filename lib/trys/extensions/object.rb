class Object
  def try(*a, &b)
    if a.empty? && block_given?
      yield self
    else
      __send__(*a, &b)
    end
  rescue NoMethodError
    nil
  end
end

class NilClass
  def try(*args)
    nil
  end
end
# -*- coding: utf-8 -*-
class Object
  def to_gunma *dummy
    "#{self.class}は群馬県になりました。"
  end
  
  def to_gunma!
    methods = self.class.instance_methods
    class << self
      methods.each do |method|
        alias_method(method.to_sym, :to_gunma) unless method =~ /^\W|^_|to_gunma|^object|^class/
      end
    end
    return to_gunma
  end
end

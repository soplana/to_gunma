# -*- encoding: UTF-8 -*-
require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))

describe Object do
  it "Array should be gunma"     do [].to_gunma.should == gunma;          end
  it "nil should be gunma"       do nil.to_gunma.should == gunma;         end
  it "Hash should be gunma"      do {}.to_gunma.should == gunma;          end
  it "String should be gunma"    do "".to_gunma.should == gunma;          end
  it "Fixnum should be gunma"    do 1.to_gunma.should == gunma;           end
  it "Float should be gunma"     do 1.1.to_gunma.should == gunma;         end
  it "Regexp should be gunma"    do //.to_gunma.should == gunma;          end
  it "Time should be gunma"      do Time.now.to_gunma.should == gunma;    end
  it "Proc should be gunma"      do Proc.new{}.to_gunma.should == gunma;  end
end

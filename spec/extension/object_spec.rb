# -*- encoding: UTF-8 -*-
require File.expand_path(File.join('../', 'spec_helper'), File.dirname(__FILE__))

describe Object do

  describe ".to_gunma" do
    it "Array should be gunma"  do [].to_gunma.should  == gunma([].class.to_s);  end
    it "nil should be gunma"    do nil.to_gunma.should == gunma(nil.class.to_s); end
    it "Hash should be gunma"   do {}.to_gunma.should  == gunma({}.class.to_s);  end
    it "String should be gunma" do "".to_gunma.should  == gunma("".class.to_s);  end
    it "Fixnum should be gunma" do 1.to_gunma.should   == gunma(1.class.to_s);   end
    it "Float should be gunma"  do 1.1.to_gunma.should == gunma(1.1.class.to_s); end
    it "Regexp should be gunma" do //.to_gunma.should  == gunma(//.class.to_s);  end
    it "Time should be gunma"   do Time.now.to_gunma.should    == gunma(Time.now.class.to_s);    end
    it "Proc should be gunma"   do Proc.new{}.to_gunma.should  == gunma(Proc.new{}.class.to_s);  end
  end

  describe ".to_gunma!" do
    before do
      @array = []
      @array.to_gunma!
      @hash  = {}
      @hash.to_gunma!
    end

    it "@array.to_gunma! should be gunma"     do @array.to_gunma!.should == gunma([].class.to_s); end
    it "@array.to_s should be gunma"          do @array.to_s.should == gunma([].class.to_s); end
    it "@array.include? should be gunma"      do @array.include?(1,2,3).should == gunma([].class.to_s); end
    it "@array.== should not be gunma"        do @array.==([]).should_not == gunma([].class.to_s); end
    it "@array.__send__ should not be gunma"  do @array.__send__(:==,[]).should_not == gunma([].class.to_s); end
    it "@array.object_id should not be gunma" do @array.object_id.should_not == gunma([].class.to_s); end
    it "@hash.to_s should be gunma"           do @hash.to_s.should == gunma({}.class.to_s); end
    it "@hash.include? should be gunma"       do @hash.include?(1,2,3).should == gunma({}.class.to_s); end
    it "@hash.== should not be gunma"         do @hash.==({}).should_not == gunma({}.class.to_s); end
    it "@hash.__send__ should not be gunma"   do @hash.__send__(:==,{}).should_not == gunma({}.class.to_s); end
    it "@hash.object_id should not be gunma"  do @hash.object_id.should_not == gunma({}.class.to_s); end
  end
end

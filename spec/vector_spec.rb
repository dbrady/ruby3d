require File.join(File.dirname(__FILE__), 'spec_helper')
require 'vector'

describe Vector do
  before(:each) do
    @vx = Vector.new 1.0, 0.0, 0.0
    @vy = Vector.new 0.0, 1.0, 0.0
    @vz = Vector.new 0.0, 0.0, 1.0
  end

  it "addition" do
    (@vx + @vy + @vz).should == Vector.new(1.0, 1.0, 1.0)
  end

  it "addition" do
    (Vector.new(1.0,1.0,1.0) - @vx - @vy - @vz).should == Vector.new(0.0,0.0,0.0)
  end

  it "dot" do
    @vx.dot(@vy).should == 0.0
  end
  
  it "cross" do
    @vx.cross(@vy).should == @vz
  end
  
end



require File.join(File.dirname(__FILE__), 'spec_helper')
require 'matrix'

describe Matrix do
  before(:each) do
    @identity = Matrix.new 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0
    @m1 = Matrix.new( *((1..9).map { |i| i.to_f }) )
    @m2 = Matrix.new( *((1..9).map { |i| i.to_f * 2}))
  end

  it "#+" do
    (@m1 + @m1).should == @m2
  end

  it "#-" do
    (@m2 - @m1).should == @m1
  end
  
  it "#*(Numeric)" do
    (@m1 * 2).should == @m2
  end
  
  it "#*(Matrix)" do
    (@m1 * @m1).should == Matrix.new(30.0, 36.0, 42.0, 66.0, 81.0, 96.0, 102.0, 126.0, 150.0)
    (@m1 * @identity).should == @m1
  end
  
  it "#/(Numeric)" do
    (@m2 / 2).should == @m1
  end
  
  it "#rows" do
    @m1.rows.should == [ [1.0, 2.0, 3.0], [4.0, 5.0, 6.0], [7.0, 8.0, 9.0] ]
  end

  it "#cols" do
    @m1.cols.should == [ [1.0, 4.0, 7.0], [2.0, 5.0, 8.0], [3.0, 6.0, 9.0] ]
  end
end








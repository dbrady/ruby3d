require File.join(File.dirname(__FILE__), 'spec_helper')
require 'matrix'

describe Matrix do
  before(:each) do
    @identity = Matrix.new 1.0, 0.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 1.0
    @m1 = Matrix.new( *((1..9).map { |i| i.to_f }) )
    @m2 = Matrix.new( *((1..9).map { |i| i.to_f * 2}))
  end

  it "addition" do
    (@m1 + @m1).should == @m2
  end
end


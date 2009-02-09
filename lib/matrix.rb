# 3D matrix
class Matrix
  attr_accessor :mat
  
  IDENTITY = Matrix.new 1.0, 0.0, 0.0,  0.0, 1.0, 0.0,  0.0, 0.0, 1.0
  
  def initialize(ax,ay,az,bx,by,bz,cx,cy,cz)
    @mat = [ax,ay,az,bx,by,bz,cx,cy,cz]
  end

  def ==(o)
    @mat == o.mat
  end
  
  def +(o)
    Matrix.new(*(@mat.zip(o.mat).map {|a,b| a+b}))
  end
end

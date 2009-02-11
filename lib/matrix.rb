# 3D matrix
require 'vector'

class Matrix
  attr_reader :rows
  
  def initialize(ax,ay,az,bx,by,bz,cx,cy,cz)
    @rows = [[ax,ay,az], [bx,by,bz], [cx,cy,cz]]
  end

  def ==(o)
    @rows.flatten == o.rows.flatten
  end
  
  def cols
    (0..2).map {|i| rows.map {|r| r[i] } }
  end
  
  def +(o)
    Matrix.new(*(@rows.flatten.zip(o.rows.flatten).map {|a,b| a+b}))
  end

  def -(o)
    Matrix.new(*(@rows.flatten.zip(o.rows.flatten).map {|a,b| a-b}))
  end
  
  def *(o)
    case o
    when Numeric
      Matrix.new(*(@rows.flatten.map {|a| a*o}))
    when Matrix
      Matrix.new(*((0..2).map {|a| (0..2).map {|b| Vector.new(*rows[a]).dot(Vector.new(*o.cols[b]))} }.flatten))
    end
  end

  def /(o)
    case o
    when Numeric
      Matrix.new(*(@rows.flatten.map {|a| a/o}))
#    when Vector
    end
  end
end

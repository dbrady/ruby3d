class Vector
  attr_accessor :x, :y, :z
  
  def initialize(x,y,z)
    @x,@y,@z = x,y,z
  end
  
  def +(o)
    Vector.new x+o.x, y+o.y, z+o.z
  end
  
  def -(o)
    Vector.new x-o.x, y-o.y, z-o.z
  end
  
  def *(o)
    Vector.new(x*o, y*o, z*o)
  end
  
  def /(o)
    Vector.new(x/o, y/o, z/o)
  end
  
  def dot(o)
    x*o.x + y*o.y + z*o.z
  end
  
  def cross(o)
    Vector.new(y*o.z-o.y*z, z*o.x-o.z*x, x*o.y-o.x*y)
  end
  
  def -@()
    Vector.new(-x, -y, -z)
  end
  
  def ==(o)
    x=o.x && y=o.y && z=o.z
  end
end

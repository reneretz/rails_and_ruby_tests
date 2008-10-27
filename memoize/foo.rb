require 'memoizable'
require 'aliasing'

include ActiveSupport::CoreExtensions::Module
include ActiveSupport::Memoizable

class Foo
  def initialize
    @count = 0    
  end
  
  def count_mais_um
    @count += 1
  end
  
end

f = Foo.new
puts f.count_mais_um
puts f.count_mais_um
puts f.count_mais_um
Foo.memoize(:count_mais_um)
puts f.count_mais_um
puts f.count_mais_um(true)
puts f.count_mais_um(true)
puts f.count_mais_um

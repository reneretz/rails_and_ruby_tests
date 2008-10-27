require 'module1'
require 'module1_plus'

class Foo
  include Module1
end  

f = Foo.new
f.foo
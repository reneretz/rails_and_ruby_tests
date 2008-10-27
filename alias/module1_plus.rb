require 'aliasing'
include ActiveSupport::CoreExtensions::Module

module Module1
  def self.included(base)
    base.class_eval do
      alias_method_chain :foo, :bar      
    end
  end
  
  def foo_with_bar
    foo_without_bar
    puts 'bar'
  end
  
  # alias_method_chain in self.included Or after foo_without_bar has been defined
  # alias_method_chain :foo, :bar      
end
'''

class Food

  def self.tasting
    puts "I taste good"
  end


  def taste
    puts " I have a taste"
  end


  protected 

  def protected_method
    puts "I am Protected Method"
  end


  private

  def private_method
    puts " I am private method"
  end

end

class Fruit < Food
  def name
    protected_method
  end
end


Fruit.new.taste
Fruit.new.name
Fruit.tasting
Food.tasting                               # Class method Bse Cls
#Fruit.new.private_method                  #Not accessible 

'''

require 'singleton'

class Logger
  include Singleton
end

#Logger.new                   #will throw error
puts Logger.instance















'''

Automated system for in which there is a class, person(base), employee, customer, superviors. 
'''




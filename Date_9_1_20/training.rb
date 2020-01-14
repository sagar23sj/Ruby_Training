

module Superpower				                          #Module containing Superpower Methods

  def can_run                                     #Method for Checking if SuperHero can Run Fast or Not
    if(@power=='run')
      puts "This Superhero can run fast"
    else
      puts "This Superhero cannot run fast"
    end
  end



  def can_fly                                     #Method for Checking if SuperHero can Fly or not
    if(@power=='fly')
      puts "This Superhero can fly"
    else
      puts "This SUperhero cannot fly"
    end

  end

  def shoot_web                                   #Method for Checking if SuperHero can Shoot Web or Not
    if(@power=='shoot_web')
      puts "This Superhero can shoot web"
    else
      puts "This Superhero cannot Shoot Web"
    end

  end  


  def rich                                        #Method for Checking if SuperHero is Rich or Not
    if(@power=='rich')
      puts "This Superhero is Rich"
    else
      puts "This Superhero is not Rich"
    end
  end

end



class SuperHeroes                                 #SuperHeroes Class

  include Superpower

  def initialize(power)
    @power=power
  end

end


puts "\n*****SPIDER-MAN*****\n"
spider=SuperHeroes.new("shoot_web")             #Creating spider object
spider.can_run
spider.can_fly
spider.shoot_web
spider.rich



puts "\n*****SHAKTI-MAN*****\n"                
shaktiman=SuperHeroes.new("fly")                #Creating shaktiman object
shaktiman.can_run
shaktiman.can_fly
shaktiman.shoot_web
shaktiman.rich


puts "\n*****FLASH*****\n"
flash=SuperHeroes.new("run")                    #Creating flash object
flash.can_run
flash.can_fly
flash.shoot_web
flash.rich

puts "\n*****BAT-MAN*****\n"
batman=SuperHeroes.new("rich")                  #Creating batman object
batman.can_run
batman.can_fly
batman.shoot_web
batman.rich

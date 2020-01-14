require 'singleton'

class HangMan

  include Singleton

  @@words_array = ['table','different','chance','loading','longing','terrific',"amazon", "blind" , "confidence", "darkness", "eligible", "feasible", "start", "tension", "traffic", "terminal"]


  def instance
  end

  def play

    puts "*****GUESS THE WORD*****\n"

    @word=@@words_array.sample

    hash={}

    @word.each_char do |c|
      if hash.key?(c) 
        hash[c] += 1
      else
        hash[c] = 1
      end
    end

    no_of_attempts = 6
    count2=@word.length 

    char_arr = Array.new(count2,"-- ")
    puts char_arr.join()

    while (no_of_attempts != 0 && count2 != 0) 
  
      print "\nGuess the character : "

      character =gets().chomp
  
      if hash.key?(character)
        count2 = count2 - hash[character]
        hash[character]=0
      else
        puts "*****Incorrect Character*****"
        no_of_attempts -= 1
        puts "No of Attempts Left : #{no_of_attempts}"
      end

      puts "\n*****STRING*****\n"
      index = 0
      @word.each_char do |c|
    
        if c == character
          char_arr[index]=character+" "
        end
        index += 1
      end
      puts char_arr.join()

      puts "\n"

    end

  end

end
game=HangMan.instance
game.play

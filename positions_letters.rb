class Game

  def initialize
    write_text
    write_word
  end

  def write_text
    print "Введи текст: "
    @word = gets.chomp.downcase
  end

  def write_word
    print "Введи слово и узнай: "
      input = gets
      i = 0
    loop do
      letter = input.chomp.downcase.split('').uniq[i]
      i += 1
      positions = @word.split('').each_with_index.select{|value, key|  value == letter.to_s }.map{|numbers| numbers.last + 1} * " "

      break if letter == nil

      if positions.empty?
        puts "#{letter} None"
      else
        puts "#{letter} #{positions}"
      end
    end
  end
end

Game.new




require 'mactts'
class View

  def initialize
    @screen = "**********************************************************************"
    @question = "Would you like to hear a poem about "
  end

  def ask
    gets.chomp.downcase
  end

  def display(content)
    system 'clear'
    puts @screen
    10.times do puts "" end
    puts "#{content}"
    10.times do puts "" end
    puts @screen
  end

  def display_question(content, content_type)
    system 'clear'
    puts @screen
    10.times do puts "" end
    puts "#{content}"
      puts " "
      puts "                            [y]    [n]"
    10.times do puts "" end
    puts @screen
  end

  def content_centraliser(content, content_type)
    sentence = "#{content}"
    until sentence.length >= 70
      sentence << " "
      sentence.reverse!
      sentence << " "
      sentence.reverse!
    end
    if content_type == "poem"
      display(sentence)
    else
      display_question(sentence, content_type)
    end
  end
  def speak(string_to_speak)
      Mac::TTS.say(string_to_speak, :alex)
  end

  def intro
    display("                         Welcome to Orator")
    sleep(3)
  end

  def question(topic)
    question = "#{@question}#{topic}?"
    content_centraliser(question, "question")
  end

  def sentence(sentence)
    content_centraliser(sentence, "poem")
    speak(sentence)
    sleep(0.2)
  end

  def another_poem?
    content_centraliser("Would you like to hear another poem?","quit question")
  end
end


require 'mactts'
class View

  def initialize
    @screen = "**********************************************************************"
    @question = "Would you like to hear a poem about "
  end

  def ask
    gets.chomp
  end

  def display(content)
    puts @screen
    10.times do puts "" end
    puts "#{content}"
    10.times do puts "" end
    puts @screen
  end

  def display_question(content, content_type)
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
  end

  def question(topic)
    question = "#{@question}#{topic}?"
    content_centraliser(question, "question")
  end

  def poem(sentence)
    content_centraliser(sentence, "poem")
  end

  def another_poem?
    content_centraliser("Would you like to hear another poem?","quit question")
  end
end

view = View.new
view.intro
view.question("life")
view.question("freedom")
view.question("hard decisions")
view.question("a little story about a little bird")

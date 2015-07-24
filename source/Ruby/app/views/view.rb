require 'mactts'
class View

  def initialize
    @screen = "                                                                                                "
    @question = "Would you like to hear a poem about "
  end

  def ask
    gets.chomp.downcase
  end

  def clear_screen
    system 'clear'
  end

  def display(content)
    puts "#{content}"
  end

  def display_question(content, content_type)
    system 'clear'
    puts @screen
    10.times do puts "" end
    puts "#{content}"
    if content_type == "question" || content_type == "quit question"
      puts " "
      puts "                                            [y]    [n]"
    end
    10.times do puts "" end
    puts @screen
  end

  def content_centraliser(content, content_type)
    sentence = "#{content}"
    until sentence.length >= 100
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
    content_centraliser("Welcome", "intro")
    sleep(1)
    content_centraliser("to", "intro")
    sleep(1)
    content_centraliser("ORATOR", "intro")
    sleep(2)
  end

  def question(topic)
    question = "#{@question}#{topic}?"
    content_centraliser(question, "question")

  end

  def sentence(sentence)
    content_centraliser(sentence, "poem")
    speak(sentence)
    sleep(0.1)
  end

  def another_poem?
    content_centraliser("Would you like to hear another poem?","quit question")
  end
end


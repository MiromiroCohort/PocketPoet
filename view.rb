class View

  def initialize

  end

  def display(content)
    puts "********************************************************"
    5.times do puts "" end
    puts "                   #{content}                       "
    5.times do puts "" end
    puts "********************************************************"
  end
  def intro
    display("Welcome to Orator")
  end

  def question(about)

  end

  def poem(poem)

  end

  def another_poem?

  end
end


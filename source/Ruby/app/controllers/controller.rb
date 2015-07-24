require_relative '../../config/application.rb'
class Controller

	def initialize

		@view = View.new
		run
	end

	def run
		@view.clear_screen
		@view.intro
		pick_poem
	end

	# def name(name)
	# 	#takes name and capitalizes and passes name to view
	# 	name = Poem.name
	# 	name = name.capitalize!
	# 	@view(name)
	# end

	def pick_poem
		#PICKS poem from data base and passes it to view
		poem = Poem.pick_poem
		question(poem)
	end

	def question(poem)
		#recieves new question from poem Specific to the poem
		question = poem.about
		@view.question(question)
		answer = @view.ask
		case answer
		when "y"
			slice_poem(poem)
		when "n"
			another_poem
		end
	end

	def slice_poem(poem)
		@view.clear_screen
		sliced_poem = poem.poem_text.split("\n")
		sliced_poem.each do |line|
			@view.sentence(line)
		end
		@view.clear_screen
		another_poem
	end

	def another_poem
		@view.another_poem?
		answer = @view.ask
		pick_poem if answer == 'y'
	end
end
controller = Controller.new()


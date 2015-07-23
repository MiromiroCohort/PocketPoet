class Controller

	def initialize
		@model = Model.new
		@view = View.new
		run
	end

	def run
		run = @view.intro
	end

	def name(name)
		#takes name and capitalizes and passes name to view
		name = @model.name
		name = name.capitalize!
		@view(name)
	end

	def pick_poem
		#PICKS poem from data base and passes it to view
		poem = @model.pick_poem
		@view.poem(poem)
	end

	def question
		#recieves new question from poem Specific to the poem
		question = @model.question
		@view.question(question)
	end

	def another_poem
		another_poem = @model.another_poem
		@view.another_poem?(another_poem)
	end
end

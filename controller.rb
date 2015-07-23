class Controller

	def initialize
		@model = Model.new
		@view = View.new
	end

	def name(name)
		name = name.capitalize!
		@view(name)
	end

	def pick_poem
		poem = @model.pick_poem
		@view.pick_poem(poem)
	end

	def question
		question = @model.question
		@view.question(question)
	end

	def another_question
		another_question = @model.another_question
		@view.another_question(another_question)
	end
end#end of class







	# def love_song
	# 	love = @player.love_song
	# 	@view.love_song(love)
	# end

	# def party_song
	# 	party = @player.love_song
	# 	@view.party_song(party)
	# end

	# def good_mood
	# 	great = @player.good_mood
	# 	@view.party_song(party)
	# end
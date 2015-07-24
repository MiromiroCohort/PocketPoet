require_relative '../../config/application'
require 'mactts'
poem =Poem.pick_poem
arr = poem.poem_text.split("\n")
arr.each do |str|
 puts str
end
# Poem.all.each do |poem|
#   p poem.poem_text.split()[0]

#

Mac::TTS.say(poem.poem_text, :alex)

# end


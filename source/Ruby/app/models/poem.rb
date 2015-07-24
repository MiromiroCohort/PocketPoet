require_relative '../../config/application'
class Poem < ActiveRecord::Base

def self.pick_poem
  random_poem_num =rand(self.all.count)
  random_poem =self.all[random_poem_num]
  return random_poem
end

end

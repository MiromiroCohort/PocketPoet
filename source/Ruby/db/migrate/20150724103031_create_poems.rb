require_relative '../../config/application'

class CreatePoems < ActiveRecord::Migration
  def change
     create_table :poems do |t|
        t.text :poem_text
        t.string :title
        t.string :poet
        t.string :about
        t.timestamps null: false
     end
  end
end

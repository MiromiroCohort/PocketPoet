require_relative '../../config/application'

class CreatePoems < ActiveRecord::Migration
  def change
     create_table :poems do |t|
        t.string :description
        t.boolean :complete
        t.timestamps null: false
     end
  end
end

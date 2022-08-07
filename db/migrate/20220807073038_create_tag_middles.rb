class CreateTagMiddles < ActiveRecord::Migration[6.1]
  def change
    create_table :tag_middles do |t|

      t.timestamps

      t.integer :tag
    end
  end
end

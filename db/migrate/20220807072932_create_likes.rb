class CreateLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :likes do |t|

      t.timestamps

      t.integer :user_id
    	t.integer :fevtime_id
    end
  end
end

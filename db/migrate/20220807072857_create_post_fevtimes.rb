class CreatePostFevtimes < ActiveRecord::Migration[6.1]
  def change
    create_table :post_fevtimes do |t|

      t.timestamps

      t.integer :costomer_id
      t.string :image
      t.string :introduction

    end
  end
end

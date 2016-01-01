class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :title
      t.string :url
      t.time :published

      t.timestamps null: false
    end
  end
end

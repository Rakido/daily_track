class CreateTracksTable < ActiveRecord::Migration[5.1]
  def change
    create_table :tracks do |t|
      t.references :user, foreign_key: true
      t.string :artist
      t.string :title
      t.string :url
      t.timestamps
    end
  end
end
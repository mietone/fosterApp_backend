class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do |t|
      t.string :name
      t.date :dob
      t.string :image
      t.boolean :gender
      t.references :litter, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateLitters < ActiveRecord::Migration[5.2]
  def change
    create_table :litters do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.boolean :with_mom

      t.timestamps
    end
  end
end

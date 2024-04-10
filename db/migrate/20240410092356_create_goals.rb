class CreateGoals < ActiveRecord::Migration[7.1]
  def change
    create_table :goals do |t|
      t.string :title
      t.float :amount
      t.date :date
      t.boolean :completed

      t.timestamps
    end
  end
end

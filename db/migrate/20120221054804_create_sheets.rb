class CreateSheets < ActiveRecord::Migration
  def change
    create_table :sheets do |t|
      t.string :code
      t.string :name
      t.integer :status
      t.string :comment

      t.timestamps
    end
  end
end

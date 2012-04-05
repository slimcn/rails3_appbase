class CreateSheet0s < ActiveRecord::Migration
  def change
    create_table :sheet0s do |t|
      t.string :f1
      t.integer :f2

      t.timestamps
    end
  end
end

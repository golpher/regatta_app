class CreateDemo1s < ActiveRecord::Migration
  def change
    create_table :demo_1s do |t|
      t.string :new_demo
      t.integer :new_demo_1

      t.timestamps
    end
  end
end

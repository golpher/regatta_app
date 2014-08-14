class CreateSailors < ActiveRecord::Migration
  def change
    create_table :sailors do |t|

      t.timestamps
    end
  end
end

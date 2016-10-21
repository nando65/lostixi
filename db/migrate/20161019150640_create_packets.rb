class CreatePackets < ActiveRecord::Migration
  def change
    create_table :packets do |t|

      t.timestamps null: false
    end
  end
end

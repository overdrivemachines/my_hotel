class CreateRoomTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :room_types do |t|
      t.string :name
      t.string :code
      t.string :description
      t.references :Property, foreign_key: true

      t.timestamps
    end
  end
end

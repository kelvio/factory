class CreateCapitals < ActiveRecord::Migration
  def change
    create_table :capitals do |t|
      t.decimal :montante_real

      t.timestamps
    end
  end
end

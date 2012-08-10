class CreatePaisDominios < ActiveRecord::Migration
  def change
    create_table :pais_dominios do |t|
      t.string :nome

      t.timestamps
    end
  end
end

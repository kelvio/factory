class CreateSocios < ActiveRecord::Migration
  def change
    create_table :socios do |t|
      t.string :nome
      t.decimal :capital
      t.string :cpf
      t.string :senha

      t.timestamps
    end
  end
end

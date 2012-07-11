class CreateTipoJuros < ActiveRecord::Migration
  def change
    create_table :tipo_juros do |t|
      t.string :nome

      t.timestamps
    end
  end
end

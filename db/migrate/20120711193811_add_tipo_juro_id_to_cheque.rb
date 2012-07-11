class AddTipoJuroIdToCheque < ActiveRecord::Migration
  def change
    add_column :cheques, :tipo_juro_id, :integer
    add_index :cheques, :tipo_juro_id
  end
end

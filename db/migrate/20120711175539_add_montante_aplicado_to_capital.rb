class AddMontanteAplicadoToCapital < ActiveRecord::Migration
  def change
    add_column :capitals, :montante_aplicado, :decimal
  end
end

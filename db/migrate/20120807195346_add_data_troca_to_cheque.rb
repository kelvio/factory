class AddDataTrocaToCheque < ActiveRecord::Migration
  def change
    add_column :cheques, :data_troca, :date
  end
end

class AddTaxaJurosToCheque < ActiveRecord::Migration
  def change
    add_column :cheques, :taxa_juros, :decimal    
  end
end

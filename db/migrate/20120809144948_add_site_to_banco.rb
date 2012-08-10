class AddSiteToBanco < ActiveRecord::Migration
  def change
    add_column :bancos, :site, :string
  end
end

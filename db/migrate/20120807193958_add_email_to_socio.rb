class AddEmailToSocio < ActiveRecord::Migration
  def change
    add_column :socios, :email, :string
  end
end

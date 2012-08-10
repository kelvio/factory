class AddCpfToEmitente < ActiveRecord::Migration
  def change
    add_column :emitentes, :cpf, :string
  end
end

class CreateSituacaoItems < ActiveRecord::Migration
  def change
    create_table :situacao_items do |t|
      t.string :nome

      t.timestamps
    end
  end
end

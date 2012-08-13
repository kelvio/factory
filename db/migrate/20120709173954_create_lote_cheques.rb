class CreateLoteCheques < ActiveRecord::Migration
  def change
    create_table :lote_cheques do |t|
      t.string :nome

      t.timestamps
    end
  end
end

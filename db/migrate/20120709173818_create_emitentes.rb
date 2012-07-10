class CreateEmitentes < ActiveRecord::Migration
  def change
    create_table :emitentes do |t|
      t.string :nome

      t.timestamps
    end
  end
end

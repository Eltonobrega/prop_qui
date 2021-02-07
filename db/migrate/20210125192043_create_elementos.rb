class CreateElementos < ActiveRecord::Migration[6.1]
  def change
    create_table :elementos do |t|
      t.string :componente
      t.string :estado
      t.float :massa

      t.timestamps
    end
  end
end

class CreateAtletas < ActiveRecord::Migration[5.0]
  def change
    create_table :atletas do |t|
      t.string :nome
      t.string :photo
      t.string :descricao
      t.references :modalidade, foreign_key: true

      t.timestamps
    end
  end
end

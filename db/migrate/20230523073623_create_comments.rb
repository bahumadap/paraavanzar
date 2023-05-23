class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.text :content
      t.references :ticket, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: true
      t.references :administrator, null: false, foreign_key: true
      t.references :executive, null: false, foreign_key: true

      t.timestamps
    end
  end
end

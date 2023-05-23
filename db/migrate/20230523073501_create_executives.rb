class CreateExecutives < ActiveRecord::Migration[7.0]
  def change
    create_table :executives do |t|
      t.references :user, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true
      t.references :administrator, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

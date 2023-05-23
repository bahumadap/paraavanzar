class CreateAdministrators < ActiveRecord::Migration[7.0]
  def change
    create_table :administrators do |t|
      t.string :administrator_email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

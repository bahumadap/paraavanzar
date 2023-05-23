class CreateRequestingUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :requesting_users do |t|
      t.string :requesting_email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

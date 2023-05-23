class CreateResponses < ActiveRecord::Migration[7.0]
  def change
    create_table :responses do |t|
      t.string :resolution_key
      t.text :res_description
      t.string :r_scale
      t.text :feedback
      t.boolean :acceptance_state
      t.date :response_date
      t.references :requesting_user, null: false, foreign_key: true
      t.references :executive, null: false, foreign_key: true
      t.references :ticket, null: false, foreign_key: true

      t.timestamps
    end
  end
end

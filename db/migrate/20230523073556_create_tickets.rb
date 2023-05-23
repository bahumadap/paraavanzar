class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :title
      t.date :creation_date
      t.string :category
      t.text :description
      t.integer :priority
      t.string :state
      t.date :deadline
      t.string :on_time
      t.string :tags
      t.references :requesting_user, null: false, foreign_key: true
      t.references :executive, null: false, foreign_key: true

      t.timestamps
    end
  end
end

class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.integer :number_tickets
      t.integer :tickets_closed
      t.integer :tickets_open
      t.integer :rating_mean
      t.references :administrator, null: false, foreign_key: true
      t.references :supervisor, null: false, foreign_key: true

      t.timestamps
    end
  end
end

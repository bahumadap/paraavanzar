class CreateSupervisors < ActiveRecord::Migration[7.0]
  def change
    create_table :supervisors do |t|
      t.string :supervisor_email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

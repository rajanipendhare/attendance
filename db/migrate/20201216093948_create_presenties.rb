class CreatePresenties < ActiveRecord::Migration[6.0]
  def change
    create_table :presenties do |t|
      t.boolean :status
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end

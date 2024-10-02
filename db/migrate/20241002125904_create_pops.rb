class CreatePops < ActiveRecord::Migration[8.0]
  def change
    create_table :pops do |t|
      t.references :bubble, null: false, foreign_key: true, index: { unique: true }
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end

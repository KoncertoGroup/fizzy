class CreateAccesses < ActiveRecord::Migration[8.0]
  def change
    create_table :accesses do |t|
      t.references :project, null: false
      t.references :user, null: false
      t.timestamps

      t.index [ :project_id, :user_id ], unique: true
    end
  end
end

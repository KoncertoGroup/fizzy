class AddCreatorToSplats < ActiveRecord::Migration[8.0]
  def change
    add_column :splats, :creator_id, :integer, null: false
  end
end

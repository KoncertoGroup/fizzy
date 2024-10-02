class AddProjectToBubbles < ActiveRecord::Migration[8.0]
  def change
    change_table :bubbles do |t|
      t.references :project, null: true
    end

    execute "update bubbles set project_id = (select id from projects limit 1)"

    change_column_null :bubbles, :project_id, false
  end
end

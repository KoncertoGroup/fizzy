class AddProjectToBubbles < ActiveRecord::Migration[8.0]
  def change
    change_table :bubbles do |t|
      t.references :project, null: true
    end

    Bubble.update_all project_id: Project.first.id
    change_column_null :bubbles, :project_id, false
  end
end

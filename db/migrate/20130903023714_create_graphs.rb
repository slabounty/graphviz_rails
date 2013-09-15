class CreateGraphs < ActiveRecord::Migration
  def change
    create_table :graphs do |t|
      t.text :graph_code
      t.integer :user_id

      t.timestamps
    end
    add_index :graphs, [:user_id, :created_at]
  end
end

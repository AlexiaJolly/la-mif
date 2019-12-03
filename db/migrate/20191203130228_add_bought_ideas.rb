class AddBoughtIdeas < ActiveRecord::Migration[6.0]
  def change
    add_column :ideas, :bought, :boolean, default: false
  end
end

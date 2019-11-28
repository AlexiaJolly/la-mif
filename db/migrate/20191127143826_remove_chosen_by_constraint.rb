class RemoveChosenByConstraint < ActiveRecord::Migration[6.0]
  def change
    change_column_null(:ideas, :chosen_by_id, true)

  end
end

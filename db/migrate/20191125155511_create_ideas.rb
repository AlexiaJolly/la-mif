class CreateIdeas < ActiveRecord::Migration[6.0]
  def change
    create_table :ideas do |t|
      t.string :title
      t.text :description
      t.string :url
      t.boolean :status
      t.references :user, null: false, foreign_key: true
      t.references :chosen_by, null: false, foreign_key: {to_table: :users}
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end

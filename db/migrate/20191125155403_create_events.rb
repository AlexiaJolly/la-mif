class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :name
      t.date :date
      t.string :token
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
    add_index :events, :token, unique: true
  end
end

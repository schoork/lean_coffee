class CreateTopics < ActiveRecord::Migration[7.1]
  def change
    create_table :topics do |t|
      t.references :meeting
      t.string :title
      t.integer :status, default: 1

      t.timestamps
    end
  end
end

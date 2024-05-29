class CreateMeetings < ActiveRecord::Migration[7.1]
  def change
    create_table :meetings do |t|
      t.string :title
      t.date :date
      t.integer :status, default: 1

      t.timestamps
    end
  end
end

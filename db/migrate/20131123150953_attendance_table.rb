class AttendanceTable < ActiveRecord::Migration
  def change
    create_table :attendance_tables do |t|
      t.text :content
      t.integer :user_id
      t.timestamps
    end
  end
end

class CreateAttendedEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :attended_events do |t|

      t.timestamps
    end
  end
end

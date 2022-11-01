class CreateAttendants < ActiveRecord::Migration[7.0]
  def change
    create_table :attendants do |t|
      t.string :fname
      t.string :lname
      t.string :email

      t.timestamps
    end
  end
end

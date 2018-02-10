class CreateLeads < ActiveRecord::Migration[5.1]
  def change
    create_table :leads do |t|
      t.date :date_created
      t.time :time_created
      t.integer :typeof
      t.string :email
      t.string :phone
      t.integer :auditory
      t.integer :where
      t.integer :target
      t.integer :bookingid
      t.integer :managerid
      t.integer :contactid

      t.timestamps
    end
  end
end

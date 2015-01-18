class CreateMyes < ActiveRecord::Migration
  def change
    create_table :myes do |t|
      t.integer :mya_id
      t.integer :myb_id
      t.integer :myc_id

      t.timestamps
    end
  end
end

class CreateMycs < ActiveRecord::Migration
  def change
    create_table :mycs do |t|
      t.integer :mya_id
      t.integer :myb_id

      t.timestamps
    end
  end
end

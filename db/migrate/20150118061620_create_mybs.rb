class CreateMybs < ActiveRecord::Migration
  def change
    create_table :mybs do |t|
      t.integer :mya_id
      t.string :title

      t.timestamps
    end
  end
end

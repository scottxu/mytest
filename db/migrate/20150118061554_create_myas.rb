class CreateMyas < ActiveRecord::Migration
  def change
    create_table :myas do |t|
      t.string :title

      t.timestamps
    end
  end
end

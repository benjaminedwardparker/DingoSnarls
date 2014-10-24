class CreateSnarls < ActiveRecord::Migration
  def change
    create_table :snarls do |t|
      t.integer :dingo_id
      t.string :post

      t.timestamps
    end
  end
end

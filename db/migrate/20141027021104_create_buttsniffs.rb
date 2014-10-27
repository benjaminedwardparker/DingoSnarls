class CreateButtsniffs < ActiveRecord::Migration
  def change
    create_table :buttsniffs do |t|
      t.integer :dingo_id
      t.integer :buttsniffee_id

      t.timestamps
    end
  end
end

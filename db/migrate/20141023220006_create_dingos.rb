class CreateDingos < ActiveRecord::Migration
  def change
    create_table :dingos do |t|
      t.string :name
      t.string :habitat
      t.string :password
      t.string :photo_url
      t.integer :age
      t.text :about

      t.timestamps
    end
  end
end

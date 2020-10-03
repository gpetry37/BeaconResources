class Resources < ActiveRecord::Migration[6.0]
  def self.up
    create_table :resources do |t|
      t.column :name, :string
      t.column :address, :string
      t.column :town, :string
      t.column :state, :string
      t.column :zip_code, :integer
      t.column :county_id, :integer
      t.column :phone, :integer
      t.column :filter, :integer
    end
  end
  
  def self.down
    drop_table :resources
  end
end

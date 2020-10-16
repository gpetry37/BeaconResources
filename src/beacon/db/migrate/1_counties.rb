class Counties < ActiveRecord::Migration[6.0]
  def self.up
    create_table :counties do |t|
      t.column :name, :string, :limit => 12, :null => false
    end

    County.create :name => "Atlantic"
    County.create :name => "Bergen"
    County.create :name => "Burlington"
    County.create :name => "Camden"
    County.create :name => "Cape May"
    County.create :name => "Cumberland"
    County.create :name => "Essex"
    County.create :name => "Gloucester"
    County.create :name => "Hudson"
    County.create :name => "Hunterdon"
    County.create :name => "Mercer"
    County.create :name => "Middlesex"
    County.create :name => "Monmounth"
    County.create :name => "Morris"
    County.create :name => "Ocean"
    County.create :name => "Passaic"
    County.create :name => "Salem"
    County.create :name => "Somerset"
    County.create :name => "Sussex"
    County.create :name => "Union"
    County.create :name => "Warren"
  end

  def self.down
    drop_table :counties
  end
end

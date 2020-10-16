class Resources < ActiveRecord::Migration[6.0]
  def self.up
    create_table :resources do |t|
      t.column :name, :string, :null => false
      t.column :address, :string
      t.column :town, :string
      t.column :state, :string
      t.column :zip_code, :string
      t.column :county_id, :integer
      t.column :phone, :bigint
      t.column :category_id, :integer
    end
    
    # Mercer County 
    Resource.create :name => "Catholic Charities", :address => "39 North Clinton Avenue", :town => "Trenton", :state => "NJ", :zip_code => "08609", :county_id => 11, :phone => 6093936336, :category_id => 1
    Resource.create :name => "Anchor House", :address => "482 Centre Street", :town => "Trenton", :state => "NJ", :zip_code => "08611", :county_id => 11, :phone => 6093968329, :category_id => 6
    Resource.create :name => "Lifeline Emergency Shelter", :address => "300 South Street", :town => "Trenton", :state => "NJ", :zip_code => "08609", :county_id => 11, :phone => 6093927665, :category_id => 3
    Resource.create :name => "Mount Carmel Guild", :address => "73 North Clinton Avenue", :town => "Trenton", :state => "NJ", :zip_code => "08609", :county_id => 11, :phone => 6093925159, :category_id => 4
    Resource.create :name => "Trenton Deliverance Center", :address => "1100 South Clinton Avenue", :town => "Trenton", :state => "NJ", :zip_code => "08618", :county_id => 11, :phone => 6092735025, :category_id => 8
    Resource.create :name => "Rescue Mission of Trenton", :address => "98 Carroll Street", :town => "Trenton", :state => "NJ", :zip_code => "08609", :county_id => 11, :phone => 6096951436, :category_id => 2
    Resource.create :name => "Amani House", :address => "518 Martin Luther King Boulevard", :town => "Trenton", :state => "NJ", :zip_code => "08618", :county_id => 11, :phone => 6093933168, :category_id => 4
    # Ocean County
    Resource.create :name => "Amity House", :address => "211 Garden Street", :town => "Mount Holly", :state => "NJ", :zip_code => "08060", :county_id => 15, :phone => 6092676182, :category_id => 4
    Resource.create :name => "Epiphany House", :address => "373 Brighton Avenue", :town => "Long Branch", :state => "NJ", :zip_code => "07740", :county_id => 15, :phone => 7328709113, :category_id => 6
    Resource.create :name => "Ocean's Harbor House", :address => "2445 Windsor Avenue", :town => "Toms River", :state => "NJ", :zip_code => "08753", :county_id => 15, :phone => 7329290660, :category_id => 6
    Resource.create :name => "Providence House", :address => "30 West Water Street", :town => "Toms River", :state => "NJ", :zip_code => "08753", :county_id => 15, :phone => 7323411489, :category_id => 6
    Resource.create :name => "Saint Stephen's Episcopal Church", :address => "367 Route 9", :town => "Waretown", :state => "NJ", :zip_code => "08758", :county_id => 15, :phone => 6096988561, :category_id => 2
    Resource.create :name => "Transitional Housing Program", :address => "1510 Hooper Avenue", :town => "Toms River", :state => "NJ", :zip_code => "08753", :county_id => 15, :phone => 9082550828, :category_id => 4
  end
  
  def self.down
    drop_table :resources
  end
end

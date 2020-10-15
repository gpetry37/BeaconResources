class Categories < ActiveRecord::Migration[6.0]
  def self.up
    create_table :categories do |t|
      t.column :name, :string, :null => false
    end
    
    Category.create :name => "Motel/hotel referral"
    Category.create :name => "Single Shelter"
    Category.create :name => "Family Shelter"
    Category.create :name => "Transitional Housing"
    Category.create :name => "Domestic Violence Shelter"
    Category.create :name => "Runaway Youth Shelter"
    Category.create :name => "Drop In Day Care"
    Category.create :name => "Soup Kitchen/Feeding Program"
    Category.create :name => "Job Training"
    Category.create :name => "Counseling"
  end

  def self.down
    drop_table :categories
  end
end

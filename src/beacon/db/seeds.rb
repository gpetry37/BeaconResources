=begin
Project name: Beacon Resources
Description: BeaconResources is a web application that will allow for easy access to verified resources, such as homeless shelters and food banks, by county in New Jersey with appropriate category filtering.
Filename: seeds.rb
Description: Populates db with table data
Last modified on: 11/09/2020
=end

# Admins
admin = Admin.new
admin.email = "admin@test.com"
admin.password = "admintest"
admin.password_confirmation = 'admintest'
admin.save!

# Counties
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

# Categories
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

# Resources
# Mercer County 
Resource.create :name => "Catholic Charities", :address => "39 North Clinton Avenue", :town => "Trenton", :zip_code => "08609", :county_id => 11, :phone => 6093936336, :category_id => 1
Resource.create :name => "Anchor House", :address => "482 Centre Street", :town => "Trenton", :zip_code => "08611", :county_id => 11, :phone => 6093968329, :category_id => 6
Resource.create :name => "Lifeline Emergency Shelter", :address => "300 South Street", :town => "Trenton", :zip_code => "08609", :county_id => 11, :phone => 6093927665, :category_id => 3
Resource.create :name => "Mount Carmel Guild", :address => "73 North Clinton Avenue", :town => "Trenton", :zip_code => "08609", :county_id => 11, :phone => 6093925159, :category_id => 4
Resource.create :name => "Trenton Deliverance Center", :address => "1100 South Clinton Avenue", :town => "Trenton", :zip_code => "08618", :county_id => 11, :phone => 6092735025, :category_id => 8
Resource.create :name => "Rescue Mission of Trenton", :address => "98 Carroll Street", :town => "Trenton", :zip_code => "08609", :county_id => 11, :phone => 6096951436, :category_id => 2
Resource.create :name => "Amani House", :address => "518 Martin Luther King Boulevard", :town => "Trenton", :zip_code => "08618", :county_id => 11, :phone => 6093933168, :category_id => 4
# Ocean County
Resource.create :name => "Amity House", :address => "211 Garden Street", :town => "Mount Holly", :zip_code => "08060", :county_id => 15, :phone => 6092676182, :category_id => 4
Resource.create :name => "Epiphany House", :address => "373 Brighton Avenue", :town => "Long Branch", :zip_code => "07740", :county_id => 15, :phone => 7328709113, :category_id => 6
Resource.create :name => "Ocean's Harbor House", :address => "2445 Windsor Avenue", :town => "Toms River", :zip_code => "08753", :county_id => 15, :phone => 7329290660, :category_id => 6
Resource.create :name => "Providence House", :address => "30 West Water Street", :town => "Toms River", :zip_code => "08753", :county_id => 15, :phone => 7323411489, :category_id => 6
Resource.create :name => "Saint Stephen's Episcopal Church", :address => "367 Route 9", :town => "Waretown", :zip_code => "08758", :county_id => 15, :phone => 6096988561, :category_id => 2
Resource.create :name => "Transitional Housing Program", :address => "1510 Hooper Avenue", :town => "Toms River", :zip_code => "08753", :county_id => 15, :phone => 9082550828, :category_id => 4
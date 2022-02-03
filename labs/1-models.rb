# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
apple = Company.where({name: "Apple"})[0]
tesla = Company.where({name: "Tesla"})[0]
amazon = Company.where({name: "Amazon"})[0]

# 2. create 1-2 new contacts for each company (they can be made up)
jassy = Contact.new
jassy.first_name = "Andy"
jassy.last_name = "Jassy"
jassy.email = "andy@amazon.com"
jassy.save

craig = Contact.new
craig.first_name = "Craig"
craig.last_name = "Federighi"
craig.email = "craig@apple.com"
craig.company_id = apple.id
craig.save

musk = Contact.new
musk.first_name = "Elon"
musk.last_name = "Musk"
musk.email = "elon@tesla.com"
musk.company_id = tesla.id
musk.save

cook = Contact.new
cook.first_name = "Tim"
cook.last_name = "Cook"
cook.email = "tim@apple.com"
cook.company_id = apple.id
cook.save

puts "There are #{Contact.all.count} contacts"


puts Contact.all.inspect

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com


puts "Contacts: #{Contact.all.count}"
contacts = Contact.all

for people in contacts
    puts "#{people.first_name} - #{people.email}"
end
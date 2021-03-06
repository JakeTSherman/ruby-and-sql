# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file

#puts "There are #{Company.all.count} companies"

# 2. create new companies

values = {
    name: "Apple", 
    url: "https://apple.com", 
    city: "Cupertino",
    state: "CA"
}
company = Company.new(values)
company.save

puts "There are #{Company.all.count} companies"

amazon = Company.new
amazon.name = "Amazon"
amazon.url = "https://amazon.com"
amazon.city = "Seattle"
amazon.state = "WA"


amazon.save

puts "There are #{Company.all.count} companies"

tesla = Company.new
tesla.name = "Tesla"
tesla.url = "https://tesla.com"
tesla.city = "Palo Alto"
tesla.state = "Tesla"
tesla.save

puts "There are #{Company.all.count} companies"


# 3. query companies table


#puts Company.all.inspect

#companies = Company.where({ state: "CA"})
#puts companies.inspect

puts Company.where({ state: "CA", name: "Apple"})
apple = Company.where({ state: "CA", name: "Apple"})[0]
#puts apple.inspect

# 4. read column values from row
#puts "#{apple.read_attribute(:name)} has a website: #{apple.url}"


# 5. update attribute value
apple.write_attribute(:slogan, "Think Different.")
apple.save

#puts apple.inspect

tesler = Company.new({ name: "Tesler"})
tesler.save
tesler.destroy
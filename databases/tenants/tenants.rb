# Require gems that are needed.

require'sqlite3'
require'faker'
Faker::Config.locale = 'en-US'

# Create sqlite3 database
db = SQLite3::Database.new("tenants.db")

# Create new table command
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS tenants(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    building VARCHAR(255),
    appartment VARCHAR(255),
    phone VARCHAR(255)
    )
SQL

# Create new entry tenant command
def new_tenant(db, name, building, appartment, phone)
  db.execute("INSERT INTO tenants (name, building, appartment, phone) VALUES(?,?,?,?)", [name, building, appartment, phone])
end

# Delete Tenant by name command
def delete_tenant_by_name(db, name)
  db.execute("DELETE FROM tenants WHERE name=?", [name])
end

# Change tenant phone number command
def change_tenant_phone(db, name, phone)
  db.execute("UPDATE tenants SET phone=? WHERE name=?", [phone, name])
end

# Change tenant appartment command
def change_tenant_appartment(db, name, appartment)
  db.execute("UPDATE tenants SET appartment=? WHERE name=?", [appartment, name])
end

# Change tenant building command
def change_tenant_building(db, name, building)
  db.execute("UPDATE tenants SET building=? WHERE name=?", [building, name])
end

# Utility function to clear the table
def clear_table(db)
  db.execute("DELETE FROM tenants")
end

# Prints out Tenant by name
def print_individual_tenant_table(db, name)
  tenant_entry = db.execute("SELECT * FROM tenants WHERE name=?", [name])
  puts tenant_entry
end


#Prints out Current Tenant Table
def print_tenant_table(db)
  table = db.execute("SELECT * FROM tenants")
  puts table
end

# Populate table with fake data
def populate_fake_data(db)
  5.times do
    new_tenant(db,Faker::Name.name, Faker::Address.street_address, Faker::Address.secondary_address, Faker::PhoneNumber.cell_phone)
  end
end

# Driver Code

clear_table(db)
populate_fake_data(db)


puts "Welcome to Tenant Manager 101 \nBelow are your Current Tenants"
puts "You can type 'done' at any time to exit the program"
print_tenant_table(db)
user_status = "active"

while user_status == "active" do

  puts "Would you like to change any of current tenants information? (y/n/done)"
  user_change = gets.chomp;

  if user_change == "y"

    puts "Would you like to change a tenants phone number, appartment, or building? (Please enter 'phone number', 'building' or 'appartment')"
    user_change_select = gets.chomp;
    puts "Please enter the users name you would like to change information on file for"
    user_look_up_by_name = gets.chomp;
    user_look_up_by_name = user_look_up_by_name.split.map(&:capitalize).join(' ')

    if user_change_select == "phone number"

      puts "Please enter the new phone number you would like to add"
      user_change_new_phone = gets.chomp;
      change_tenant_phone(db, user_look_up_by_name, user_change_new_phone)
      puts "Here is the updated tenants information"
      print_individual_tenant_table(db,user_look_up_by_name)
      puts "Here are all your tenants"
      print_tenant_table(db)

    elsif user_change_select == "appartment"

      puts "Please enter the new appartment for the tenant"
      user_change_new_appt = gets.chomp;
      change_tenant_appartment(db,user_look_up_by_name, user_change_new_appt )
      puts "Here is the updated tenants information"
      print_individual_tenant_table(db,user_look_up_by_name)
      puts "Here are all your tenants"
      print_tenant_table(db)

    elsif user_change_select == "building"

      puts "Please enter the new building for the tenant"
      user_change_new_building = gets.chomp;
      change_tenant_building(db,user_look_up_by_name, user_change_new_building )
      puts "Here is the updated tenants information"
      print_individual_tenant_table(db,user_look_up_by_name)
      puts "Here are all your tenants"
      print_tenant_table(db)

    elsif user_change == "done"
      user_status = "done"
      exit
    end

  elsif user_change == "n"

    puts "Would you like to add or delete a tenant? (add / delete / done)"
    user_change_add_or_delete = gets.chomp;

    if user_change_add_or_delete == "add"

      puts "Please enter the new tenants name"
      new_tenant_name = gets.chomp;
      puts "Please enter the new tenants building"
      new_tenant_building = gets.chomp;
      puts "Please enter the new tenants appartment"
      new_tenant_appartment = gets.chomp;
      puts "Please enter the new tenants phone number"
      new_tenant_phone_number = gets.chomp;
      new_tenant(db, new_tenant_name, new_tenant_building, new_tenant_appartment, new_tenant_phone_number)
      puts "Here is your new Tenant"
      print_individual_tenant_table(db, new_tenant_name)
      puts "Here are all your tenants"
      print_tenant_table(db)


    elsif user_change_add_or_delete == "delete"
      puts "Please enter the tenants name you would like the delete from your system"
      user_delete_by_name = gets.chomp;
      user_delete_by_name = user_delete_by_name.split.map(&:capitalize).join(' ')
      delete_tenant_by_name(db, user_delete_by_name)
      puts "Here is your new Tenant List"
      print_tenant_table(db)
    end

  elsif user_change == "done"
    user_status = "done"
    exit
  end

end




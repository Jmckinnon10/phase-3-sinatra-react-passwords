puts "🌱 Seeding spices..."
Account.destroy_all
Password.destroy_all
User.destroy_all


netflix = Account.create(websites: "Netflix")
hbomax = Account.create(websites: "HBOmax")
instagram = Account.create(websites: "Instagram")
# Seed your database here
p1 = Password.create(password_name: "jmac")
p2 = Password.create(password_name: "password")
p3 = Password.create(password_name: "password")



users_first = User.create(name: "John", pin: 1023,password_id: p1.id, account_id: netflix.id)
users_second = User.create(name: "John", pin: 1023,password_id: p2.id, account_id: hbomax.id)
users_third = User.create(name: "John", pin: 1023,password_id: p3.id, account_id: instagram.id)
puts "✅ Done seeding!"

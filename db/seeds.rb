puts "🌱 Seeding spices..."
Account.destroy_all
Password.destroy_all
User.destroy_all


netflix = Account.create(websites: "Netflix")
hbomax = Account.create(websites: "HBOmax")
instagram = Account.create(websites: "Instagram")
# Seed your database here
p1 = Password.create(password_name: "jmac")
p2 = Password.create(password_name: "bsun")
p3 = Password.create(password_name: "mtoo")


bryan = User.create(name: "Bryan", pin: 1234,password_id: p3.id, account_id: netflix.id)
michelle = User.create(name: "Michelle", pin: 5678,password_id: p2.id, account_id: hbomax.id)
john = User.create(name: "John", pin: 1023,password_id: p1.id, account_id: instagram.id)
puts "✅ Done seeding!"

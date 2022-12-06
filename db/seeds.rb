puts "🌱 Seeding spices..."

bryan = User.create(name: "Bryan", pin: 1234, password: "bsun")
michelle = User.create(name: "Michelle", pin: 5678, password: "staringdown")
john = User.create(name: "John", pin: 1023, password: "jmac")

netflix = Account.create(websites: "Netflix")
hbomax = Account.create(websites: "HBOmax")
instagram = Account.create(websites: "Instagram")
# Seed your database here
p1 = Password.create(user_id: michelle.id, account_id: netflix.id)
p2 = Password.create(user_id: john.id, account_id: hbomax.id)
p3 = Password.create(user_id: bryan.id, account_id: instagram.id)
p4 = Password.create(user_id: michelle.id, account_id: instagram.id)
p5 = Password.create(user_id: bryan.id, account_id: netflix.id)

puts "✅ Done seeding!"

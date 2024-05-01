# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Seed file for populating the database tables

# Clear existing data
Transaction.destroy_all
User.destroy_all
Category.destroy_all
Goal.destroy_all
WalletGoal.destroy_all
Wallet.destroy_all


# Create users
user1 = User.create(email: 'user1@example.com', password: 'password1')
user2 = User.create(email: 'user2@example.com', password: 'password2')

puts "#{User.count} users created"

# Create categories
category1 = Category.create(name: 'Goal', icon: '🎯')
category2 = Category.create(name: 'Salary', icon: '💵')
category3 = Category.create(name: 'Rent', icon: '🏡')
category4 = Category.create(name: 'Subscriptions', icon: '🎬')
category5 = Category.create(name: 'Food', icon: '🍔 ')
category6 = Category.create(name: 'Shopping', icon: '🛍️')
category7 = Category.create(name: 'Grocery', icon: '🛒')
category8 = Category.create(name: 'Utilities', icon: '⛽️')
category9 = Category.create(name: 'Health Care', icon: '🩺')
category10 = Category.create(name: 'Entertainment', icon: '🎼')
category11 = Category.create(name: 'Transportation', icon: '🚗')
category12 = Category.create(name: 'Traveling', icon: '🛩️')
category13 = Category.create(name: 'Miscellaneous', icon: '⚽️')
category14 = Category.create(name: 'Freelance', icon: '👨🏿‍💻')
category15 = Category.create(name: 'Investment', icon: '📊')
category16 = Category.create(name: 'Bonus', icon: '🎁')

puts "#{Category.count} categories created"

# Create goals
goal1 = Goal.create(title: 'Save for vacation', amount: 1000, date: Date.new(2024, 12, 31), completed: false)
goal2 = Goal.create(title: 'Buy a new phone', amount: 800, date: Date.new(2024, 10, 31), completed: false)
goal3 = Goal.create(title: 'Save for villa', amount: 45000, date: Date.new(2024, 10, 31), completed: false)
# goal4 = Goal.create(title: 'Buy a new cloths', amount: 8600, date: Date.new(2024, 03, 31), completed: false)


# Create wallets
wallet0 = Wallet.create(name: "Main", user_id: user1.id)
wallet0_goal = Goal.create(title: 'Main', amount: 0, date: Date.today, completed: false)
WalletGoal.create(wallet: wallet0, goal: wallet0_goal)
wallet1 = Wallet.create(name: "Savings", user_id: user1.id)
wallet1_goal = Goal.create(title: 'Main', amount: 0, date: Date.today, completed: false)
WalletGoal.create(wallet: wallet1, goal: wallet1_goal)
wallet2 = Wallet.create(name: "Checking", user_id: user2.id)
wallet2_goal = Goal.create(title: 'Main', amount: 0, date: Date.today, completed: false)
WalletGoal.create(wallet: wallet2, goal: wallet2_goal)

wallet3 = Wallet.create(name: "Checking", user_id: user2.id)
wallet3_goal = Goal.create(title: 'Main', amount: 0, date: Date.today, completed: false)
WalletGoal.create(wallet: wallet3, goal: wallet3_goal)
puts "#{Wallet.count} wallets created"

# Create goals
goal1 = Goal.create(title: 'Save for vacation', amount: 1000, date: Date.new(2024, 12, 31), completed: false)
goal2 = Goal.create(title: 'Buy a new phone', amount: 800, date: Date.new(2024, 10, 31), completed: false)
puts "#{Goal.count} goals created"

# Create transactions
transaction1 = Transaction.create(goal: goal1, wallet: wallet1, category: category2, title: 'Salary', description: 'Bought lunch with friends', amount: 5620, date: Date.new(2024, 5, 03), transaction_type: 1)
transaction2 = Transaction.create(goal: goal2, wallet: wallet0, category: category6, title: 'New Headphones', description: 'Bought new headphones online', amount: 500, date: Date.new(2024, 5, 04), transaction_type: 1)
transaction3 = Transaction.create(goal: goal1, wallet: wallet1, category: category12, title: 'Plane Ticket', description: 'Flights on the biggest plane', amount: 1235, date: Date.new(2024, 5, 05), transaction_type: 1)
transaction4 = Transaction.create(goal: goal2, wallet: wallet0, category: category2, title: 'Freelance Work', description: 'Customer is happy, I have my money paid', amount: 450, date: Date.new(2024, 5, 06), transaction_type: 0)
transaction5 = Transaction.create(goal: goal1, wallet: wallet1, category: category13, title: 'Birthday Gift', description: 'I got a birthday gifts', amount: 654, date: Date.new(2024, 5, 07), transaction_type: 0)
transaction6 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Villa House', description: 'Bought new Villa house online', amount: 4235, date: Date.new(2024, 5, 8), transaction_type: 1)
transaction7 = Transaction.create(goal: goal1, wallet: wallet1, category: category12, title: 'Trip To Dubai', description: 'Travel to Dubai with friends', amount: 200, date: Date.new(2024, 5, 9), transaction_type: 1)
transaction8 = Transaction.create(goal: goal2, wallet: wallet0, category: category13, title: 'Gift', description: 'Got a new gift', amount: 765, date: Date.new(2024, 5, 10), transaction_type: 0)
transaction9 = Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Movie Tickets', description: 'Watched a movie with friends', amount: 6243, date: Date.new(2024, 5, 11), transaction_type: 1)
transaction10 = Transaction.create(goal: goal2, wallet: wallet0, category: category6, title: 'Gaming Console', description: 'Got a new gaming console', amount: 8735, date: Date.new(2024, 05, 12), transaction_type: 0)
transaction11 = Transaction.create(goal: goal1, wallet: wallet1, category: category5, title: 'Dinner', description: 'Had dinner with family', amount: 1535, date: Date.new(2024, 05, 13), transaction_type: 1)
transaction12 = Transaction.create(goal: goal2, wallet: wallet0, category: category6, title: 'Electronics Accessories', description: 'Bought accessories for electronics', amount: 50, date: Date.new(2024, 5, 14), transaction_type: 1)
transaction13 = Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Concert Tickets', description: 'Got a live concert ticket', amount: 625, date: Date.new(2024, 5, 15), transaction_type: 0)
transaction14 = Transaction.create(goal: goal2, wallet: wallet0, category: category6, title: 'Clothing', description: 'Purchased new clothing items', amount: 7620, date: Date.new(2024, 5, 16), transaction_type: 1)
transaction15 = Transaction.create(goal: goal1, wallet: wallet1, category: category7, title: 'Groceries', description: 'Bought weekly groceries', amount: 2076, date: Date.new(2024, 5, 17), transaction_type: 1)
transaction16 = Transaction.create(goal: goal2, wallet: wallet0, category: category8, title: 'Home Decor', description: 'Got new decorations for home', amount: 5720, date: Date.new(2024, 5, 18), transaction_type: 0)

Transaction.create(goal: goal2, wallet: wallet0, category: category8, title: 'Home Office Supplies', description: 'Bought supplies for home office', amount: 5720, date: Date.new(2024, 5, 18), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category7, title: 'Grocery Shopping', description: 'Bought groceries for the week', amount: 120, date: Date.new(2024, 5, 19), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category5, title: 'Dinner Date', description: 'Enjoyed dinner with friends', amount: 3500, date: Date.new(2024, 5, 20), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category8, title: 'Electric Bill', description: 'Paid electricity bill for the month', amount: 2000, date: Date.new(2024, 5, 21), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category9, title: 'Fitness Class', description: 'Joined a fitness class', amount: 800, date: Date.new(2024, 5, 22), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Movie Night', description: 'Watched a movie at the cinema', amount: 1500, date: Date.new(2024, 5, 23), transaction_type: 1)


Transaction.create(goal: goal1, wallet: wallet1, category: category14, title: 'Freelance Work Payment', description: 'Received payment for freelance work', amount: 2076, date: Date.new(2024, 5, 17), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category15, title: 'Investment Dividend', description: 'Received consulting fee', amount: 5720, date: Date.new(2024, 5, 18), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category2, title: 'Rental Income', description: 'Received rental income from property', amount: 120, date: Date.new(2024, 5, 19), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category16, title: 'Bonus Payment', description: 'Received bonus payment', amount: 3500, date: Date.new(2024, 5, 20), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category15, title: 'Investment Return', description: 'Received investment return', amount: 2000, date: Date.new(2024, 5, 21), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category2, title: 'Sales Revenue', description: 'Received revenue from sales', amount: 800, date: Date.new(2024, 5, 22), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category14, title: 'Freelance Project Payment', description: 'Received payment for freelance project', amount: 1500, date: Date.new(2024, 5, 23), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category2, title: 'Online Course Sale', description: 'Received income from online course sale', amount: 3000, date: Date.new(2024, 5, 24), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category2, title: 'Commission', description: 'Received commission payment', amount: 4500, date: Date.new(2024, 5, 25), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category16, title: 'Royalty Payment', description: 'Received royalty payment', amount: 6000, date: Date.new(2024, 5, 26), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category16, title: 'Performance Bonus', description: 'Received performance bonus', amount: 250, date: Date.new(2024, 5, 27), transaction_type: 0)



Transaction.create(goal: goal1, wallet: wallet0, category: category11, title: 'Car Service', description: 'Serviced the car', amount: 3000, date: Date.new(2024, 5, 24), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet1, category: category6, title: 'Tech Gadgets', description: 'Bought new tech gadgets', amount: 4500, date: Date.new(2024, 5, 25), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category6, title: 'Furniture Purchase', description: 'Bought new furniture for the house', amount: 6000, date: Date.new(2024, 5, 26), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category4, title: 'Monthly Subscription', description: 'Renewed monthly subscription', amount: 250, date: Date.new(2024, 5, 27), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet0, category: category6, title: 'Book Purchase', description: 'Bought new books', amount: 4000, date: Date.new(2024, 5, 28), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet1, category: category8, title: 'Water Bill', description: 'Paid water bill for the month', amount: 1500, date: Date.new(2024, 5, 29), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Yoga Class', description: 'Joined a yoga class', amount: 700, date: Date.new(2024, 5, 30), transaction_type: 1)



Transaction.create(goal: goal2, wallet: wallet1, category: category16, title: 'Referral Reward', description: 'Received reward for referral', amount: 4000, date: Date.new(2024, 5, 28), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet0, category: category15, title: 'Investment Profit', description: 'Received profit from investment', amount: 1500, date: Date.new(2024, 5, 29), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category16, title: 'Grants', description: 'Received grant funding', amount: 700, date: Date.new(2024, 5, 30), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category14, title: 'Online Sales', description: 'Received income from online sales', amount: 2500, date: Date.new(2024, 5, 31), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category15, title: 'Dividend Income', description: 'Received dividend income from stocks', amount: 2076, date: Date.new(2024, 5, 17), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet0, category: category14, title: 'Freelance Consultation Fee', description: 'Received fee for freelance consultation', amount: 5720, date: Date.new(2024, 5, 1), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category2, title: 'Sponsorship Payment', description: 'Received payment from sponsorship', amount: 120, date: Date.new(2024, 5, 2), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet0, category: category16, title: 'Inheritance', description: 'Received inheritance', amount: 3500, date: Date.new(2024, 5, 3), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet1, category: category15, title: 'Investment Dividend', description: 'Received dividend from investment', amount: 2000, date: Date.new(2024, 5, 4), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet0, category: category9, title: 'Fitness Class', description: 'Joined a fitness class', amount: 800, date: Date.new(2024, 5, 5), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet1, category: category16, title: 'Bonus', description: 'Received bonus payment', amount: 1500, date: Date.new(2024, 5, 6), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category14, title: 'Freelance Writing Payment', description: 'Received payment for freelance writing', amount: 3000, date: Date.new(2024, 5, 7), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet0, category: category15, title: 'Investment Interest', description: 'Received interest from investment', amount: 4500, date: Date.new(2024, 5, 8), transaction_type: 0)

Transaction.create(goal: goal2, wallet: wallet1, category: category6, title: 'Game Purchase', description: 'Bought a new video game', amount: 2500, date: Date.new(2024, 5, 31), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet0, category: category6, title: 'Pet Supplies', description: 'Bought supplies for the pet', amount: 1000, date: Date.new(2024, 6, 1), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category8, title: 'Kitchen Appliances', description: 'Purchased new kitchen appliances', amount: 5720, date: Date.new(2024, 5, 18), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category6, title: 'Art Supplies', description: 'Bought supplies for art project', amount: 2076, date: Date.new(2024, 5, 1), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category8, title: 'Utility Bill', description: 'Paid utility bill for the month', amount: 3500, date: Date.new(2024, 5, 2), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category8, title: 'Gas Bill', description: 'Paid gas bill for the month', amount: 2000, date: Date.new(2024, 5, 3), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category4, title: 'Online Subscription', description: 'Subscribed to a streaming service', amount: 800, date: Date.new(2024, 5, 4), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Music Album', description: 'Purchased a music album', amount: 1500, date: Date.new(2024, 5, 5), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category8, title: 'Cleaning Supplies', description: 'Bought supplies for cleaning', amount: 3000, date: Date.new(2024, 5, 6), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet0, category: category6, title: 'DIY Project Materials', description: 'Purchased materials for DIY project', amount: 4500, date: Date.new(2024, 5, 7), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category9, title: 'Insurance Payment', description: 'Paid insurance premium', amount: 6000, date: Date.new(2024, 5, 8), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Movie Tickets', description: 'Purchased tickets for a movie', amount: 250, date: Date.new(2024, 5, 9), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet0, category: category10, title: 'Concert Tickets', description: 'Purchased tickets for a concert', amount: 4000, date: Date.new(2024, 5, 10), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet1, category: category4, title: 'Credit Card Bill', description: 'Paid water bill for the month', amount: 1500, date: Date.new(2024, 5, 11), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category4, title: 'Credit Card Bill', description: 'Joined a yoga class', amount: 700, date: Date.new(2024, 5, 12), transaction_type: 1)
Transaction.create(goal: goal1, wallet: wallet1, category: category10, title: 'Cooking Class', description: 'Enrolled in a cooking class', amount: 2500, date: Date.new(2024, 5, 13), transaction_type: 1)
Transaction.create(goal: goal2, wallet: wallet0, category: category4, title: 'Magazine Subscription', description: 'Subscribed to a magazine', amount: 1000, date: Date.new(2024, 5, 14), transaction_type: 1)


Transaction.create(goal: goal2, wallet: wallet0, category: category2, title: 'Consulting Income', description: 'Received income from consulting services', amount: 6000, date: Date.new(2024, 5, 9), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet1, category: category2, title: 'Sales Revenue', description: 'Received revenue from sales', amount: 250, date: Date.new(2024, 5, 10), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet0, category: category14, title: 'Website Ad Revenue', description: 'Received revenue from website advertisements', amount: 4000, date: Date.new(2024, 5, 11), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet1, category: category15, title: 'Investment Profit', description: 'Received profit from investment', amount: 1500, date: Date.new(2024, 5, 12), transaction_type: 0)
Transaction.create(goal: goal1, wallet: wallet0, category: category14, title: 'Freelance Design Payment', description: 'Received payment for freelance design work', amount: 700, date: Date.new(2024, 5, 13), transaction_type: 0)
Transaction.create(goal: goal2, wallet: wallet1, category: category2, title: 'Rental Income', description: 'Received rental income from property', amount: 2500, date: Date.new(2024, 5, 14), transaction_type: 0)


puts "#{Transaction.count} transactions created"

# Create wallet goals
wallet_goal1 = WalletGoal.create(wallet: wallet1, goal: goal1)
wallet_goal2 = WalletGoal.create(wallet: wallet2, goal: goal2)
wallet_goal3 = WalletGoal.create(wallet: wallet3, goal: goal3)

puts "#{WalletGoal.count} Wallet goals created"

puts "Seed data has been created successfully!"

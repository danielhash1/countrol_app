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
category1 = Category.create(name: 'Salary', icon: '💵')
category2 = Category.create(name: 'Rent', icon: '🏡')
category3 = Category.create(name: 'Subscriptions', icon: '🎬')
category4 = Category.create(name: 'Food', icon: '🍔')
category5 = Category.create(name: 'Shopping', icon: '🛍️')
category6 = Category.create(name: 'Grocery', icon: '🛒')
category7 = Category.create(name: 'Utilities', icon: '⛽️')
category8 = Category.create(name: 'Health Care', icon: '🩺')
category9 = Category.create(name: 'Entertainment', icon: '🎼')
category10 = Category.create(name: 'Miscellaneous', icon: '⚽️')
category11 = Category.create(name: 'Transportation', icon: '🚗')
category12 = Category.create(name: 'Traveling', icon: '🛩️')
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
transaction1 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Salary', description: 'Bought lunch with friends', amount: 5620, date: Date.new(2024, 7, 15), transaction_type: 0)
transaction2 = Transaction.create(goal: goal2, wallet: wallet0, category: category2, title: 'New Headphones', description: 'Bought new headphones online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)
transaction3 = Transaction.create(goal: goal1, wallet: wallet1, category: category3, title: 'Plane Ticket', description: 'Flights on the biggest plane', amount: 1235, date: Date.new(2024, 5, 10), transaction_type: 1)
transaction4 = Transaction.create(goal: goal2, wallet: wallet0, category: category4, title: 'Freelance Work', description: 'Customer is happy, I have my money paid', amount: 450, date: Date.new(2024, 1, 9), transaction_type: 0)
transaction5 = Transaction.create(goal: goal1, wallet: wallet1, category: category5, title: 'Birthday Gift', description: 'I got a birthday gifts', amount: 654, date: Date.new(2024, 2, 07), transaction_type: 0)
transaction6 = Transaction.create(goal: goal2, wallet: wallet0, category: category6, title: 'Villa House', description: 'Bought new Villa house online', amount: 54235, date: Date.new(2025, 4, 17), transaction_type: 1)
transaction7 = Transaction.create(goal: goal1, wallet: wallet1, category: category7, title: 'Trip To Dubai', description: 'Travel to Dubai with friends', amount: 20, date: Date.new(2026, 6, 10), transaction_type: 1)
transaction8 = Transaction.create(goal: goal2, wallet: wallet0, category: category8, title: 'Gift', description: 'Got a new gift', amount: 765, date: Date.new(2026, 10, 9), transaction_type: 0)


transaction1 = Transaction.create(goal: goal1, wallet: wallet1, category: category9, title: 'Movie Tickets', description: 'Watched a movie with friends', amount: 6243, date: Date.new(2025, 05, 10), transaction_type: 1)
transaction2 = Transaction.create(goal: goal2, wallet: wallet0, category: category10, title: 'Gaming Console', description: 'Got a new gaming console', amount: 8735, date: Date.new(2025, 4, 27), transaction_type: 0)
transaction3 = Transaction.create(goal: goal1, wallet: wallet1, category: category11, title: 'Dinner', description: 'Had dinner with family', amount: 1535, date: Date.new(2024, 01, 10), transaction_type: 1)
transaction4 = Transaction.create(goal: goal2, wallet: wallet0, category: category12, title: 'Electronics Accessories', description: 'Bought accessories for electronics', amount: 50, date: Date.new(2024, 9, 9), transaction_type: 1)
transaction5 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Concert Tickets', description: 'Got a live concert ticket', amount: 625, date: Date.new(2024, 11, 10), transaction_type: 0)
transaction6 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Clothing', description: 'Purchased new clothing items', amount: 7620, date: Date.new(2024, 04, 16), transaction_type: 1)
transaction7 = Transaction.create(goal: goal1, wallet: wallet1, category: category2, title: 'Groceries', description: 'Bought weekly groceries', amount: 2076, date: Date.new(2024, 03, 10), transaction_type: 1)
transaction8 = Transaction.create(goal: goal2, wallet: wallet0, category: category1, title: 'Home Decor', description: 'Got new decorations for home', amount: 5720, date: Date.new(2024, 01, 9), transaction_type: 0)



puts "#{Transaction.count} transactions created"

# Create wallet goals
wallet_goal1 = WalletGoal.create(wallet: wallet1, goal: goal1)
wallet_goal2 = WalletGoal.create(wallet: wallet2, goal: goal2)
wallet_goal3 = WalletGoal.create(wallet: wallet3, goal: goal3)

puts "#{WalletGoal.count} Wallet goals created"

puts "Seed data has been created successfully!"

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
 transaction1 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Salary', description: 'Bought lunch with friends', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 0)
# transaction2 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'New Headphones', description: 'Bought new headphones online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)
transaction3 = Transaction.create(goal: goal1, wallet: wallet1, category: category12, title: 'Plane Ticket', description: 'Flights on the biggest plane', amount: 1235, date: Date.new(2024, 4, 10), transaction_type: 1)
# transaction4 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Freelance Work', description: 'Customer is happy, I have my money paid', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 0)
# transaction5 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Birthday Gift', description: 'I got a birthday gifts', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 0)
# transaction6 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Villa House', description: 'Bought new Villa house online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)
# transaction7 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Trip To Dubai', description: 'Travel to Dubai with friends', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 1)
# transaction8 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Salary', description: 'Bought new headphones online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 0)


# transaction1 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Movie Tickets', description: 'Watched a movie with friends', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 1)
# transaction2 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Gaming Console', description: 'Purchased a new gaming console', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 0)
# transaction3 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Dinner', description: 'Had dinner with family', amount: 1235, date: Date.new(2024, 4, 10), transaction_type: 1)
# transaction4 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Electronics Accessories', description: 'Bought accessories for electronics', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 0)
# transaction5 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Concert Tickets', description: 'Attended a live concert', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 0)
# transaction6 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Clothing', description: 'Purchased new clothing items', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)
# transaction7 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Groceries', description: 'Bought weekly groceries', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 1)
# transaction8 = Transaction.create(goal: goal2, wallet: wallet0, category: category1, title: 'Home Decor', description: 'Bought new decorations for home', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 0)



puts "#{Transaction.count} transactions created"

# Create wallet goals
wallet_goal1 = WalletGoal.create(wallet: wallet1, goal: goal1)
wallet_goal2 = WalletGoal.create(wallet: wallet2, goal: goal2)
wallet_goal3 = WalletGoal.create(wallet: wallet3, goal: goal3)

puts "#{WalletGoal.count} Wallet goals created"

puts "Seed data has been created successfully!"

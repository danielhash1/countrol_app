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
category1 = Category.create(name: 'Food', icon: '🍔')
category2 = Category.create(name: 'Transportation', icon: '🚗')
category3 = Category.create(name: 'Shopping', icon: '🛍️')

puts "#{Category.count} categories created"



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
puts "#{Wallet.count} wallets created"

# Create goals
goal1 = Goal.create(title: 'Save for vacation', amount: 1000, date: Date.new(2024, 12, 31), completed: false)
goal2 = Goal.create(title: 'Buy a new phone', amount: 800, date: Date.new(2024, 10, 31), completed: false)
puts "#{Goal.count} goals created"

# Create transactions
transaction1 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Lunch', description: 'Bought lunch with friends', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 0)
transaction2 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'New headphones', description: 'Bought new headphones online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)
transaction3 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Plane', description: 'Flights on the biggest plane', amount: 1235, date: Date.new(2024, 4, 10), transaction_type: 0)
transaction4 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'Freelance', description: 'Customer is happt, I have my money paid', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 0)
transaction5 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Lunch', description: 'Bought lunch with friends', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 0)
transaction6 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'New headphones', description: 'Bought new headphones online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)
transaction7 = Transaction.create(goal: goal1, wallet: wallet1, category: category1, title: 'Lunch', description: 'Bought lunch with friends', amount: 20, date: Date.new(2024, 4, 10), transaction_type: 0)
transaction8 = Transaction.create(goal: goal2, wallet: wallet0, category: category3, title: 'New headphones', description: 'Bought new headphones online', amount: 50, date: Date.new(2024, 4, 9), transaction_type: 1)



puts "#{Transaction.count} transactions created"

# Create wallet goals
wallet_goal1 = WalletGoal.create(wallet: wallet1, goal: goal1)
wallet_goal2 = WalletGoal.create(wallet: wallet2, goal: goal2)

puts "#{WalletGoal.count} Wallet goals created"

puts "Seed data has been created successfully!"

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.create(email: 'root@root.com', password: 'rootro')
user_2 = User.create(email: 'luis@luis.com', password: 'luis123')
user_3 = User.create(email: 'pepe@pepe.com', password: 'pepe123')

stock_1 = Stock.create(ticker: 'AAPL', name: 'APPLE')
stock_2 = Stock.create(ticker: 'GOOG', name: 'GOOGLE')
stock_3 = Stock.create(ticker: 'MSFT', name: 'MICROSOFT')

user_1.stocks << stock_1
user_1.stocks << stock_2

user_2.stocks << stock_1
user_2.stocks << stock_3

user_3.stocks << stock_2
user_3.stocks << stock_3

require 'database_cleaner'
require 'faker'

def clean_db
  puts 'Clean DB...'.yellow
  DatabaseCleaner.strategy = :truncation
  DatabaseCleaner.clean
end

puts "\nSeeding users...".blue
FactoryBot.create(:user,
  email: "admin@example.com",
  password: '123456'
)
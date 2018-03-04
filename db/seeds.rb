require 'database_cleaner'
require 'factory_bot_rails'
require 'faker'

puts 'Clean DB...'.yellow
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean

puts "\nSeeding users...".blue
FactoryBot.create(:user,
  email: "admin@example.com",
  password: '123456'
)

puts "\nSeeding settings...".blue
I18n.locale  = :en
record       = SiteSetting.find_or_create_by(key: :phone)
record.label = 'Phone(s)'
record.value = '095 820 5556, 067 177 8308'
record.save

record       = SiteSetting.find_or_create_by(key: :address)
record.label = 'Address'
record.value = 'м. Івано-Франківськ вул. Пулюя 15А'
record.save

I18n.locale = :ua
record       = SiteSetting.find_or_create_by(key: :phone)
record.label = 'Телефон(и)'
record.value = '095 820 5556, 067 177 8308'
record.save

record       = SiteSetting.find_or_create_by(key: :address)
record.label = 'Адреса'
record.value = 'м. Івано-Франківськ вул. Пулюя 15А'
record.save
I18n.locale  = :en
require 'database_cleaner'
require 'factory_bot_rails'
require 'faker'

puts 'Clean DB...'.yellow
DatabaseCleaner.strategy = :truncation
DatabaseCleaner.clean


puts "\nSeeding users...".blue
FactoryBot.create(:user, email: "admin@example.com", password: '123456')


puts "\nSeeding settings...".blue
I18n.locale  = :en
SiteSetting.find_or_create_by(key: :phone).update({
  label: 'Phone(s)',
  value: '095 820 5556, 067 177 8308'
})

SiteSetting.find_or_create_by(key: :work_hours).update({
  label: 'Work hours for call',
  value: 'Mon-Fri 8:00-17:00'
})

SiteSetting.find_or_create_by(key: :address).update({
  label: 'Address',
  value: 'м. Івано-Франківськ вул. Пулюя 15А'
})

SiteSetting.find_or_create_by(key: :email).update({
  label: 'Email',
  value: ''
})

SiteSetting.find_or_create_by(key: :google_map).update({
  label: 'GoogleMap script',
  value: ''
})

SiteSetting.find_or_create_by(key: :shop_url).update({
  label: 'Link to shop',
  value: '#'
})


puts "\nSeeding blog...".blue
11.times do |_i| 
  FactoryBot.create(:blog).update(
    title: Faker::Lorem.sentence,
    content: Faker::Lorem.paragraph,
    description: Faker::Lorem.sentence,
    meta_keys: Faker::Lorem.words(4).join(','),
    meta_description: Faker::Lorem.sentence
  )
end

puts "\nContent blocks...".blue
{
  welcome: 'Construction Company',
  our_services: 'Our Construction Services',
  safety: 'Safety',
  experience: 'Experience',
  perfessional: 'Perfessional',
  staff: 'Qualified Staff',
  quality: 'Quality Work',
  delivery: 'Delivery',
  last_projects: 'Our Latest Projects',
  our_team: 'Our Team',
  last_blog_posts: 'Latest From Blog',
  testimonials: 'Our Testimonials',
  footer_text: ''
}.each_pair do |key, title|
  ContentBlock.find_or_create_by(key: key).update(
    small_title: Faker::Lorem.sentence,
    title: title,
    content: Faker::Lorem.paragraph
  )
end

puts "\nSeeding testimonials...".blue
6.times do |_i| 
  FactoryBot.create(:testimonial).update(
    author: Faker::Name.name,
    content: Faker::Lorem.paragraph,
    position: Faker::Company.profession
  )
end

I18n.locale = :ua
SiteSetting.find_or_create_by(key: :phone).update({
  label: 'Телефон(и)',
  value: '095 820 5556, 067 177 8308'
})

SiteSetting.find_or_create_by(key: :address).update({
  label: 'Адреса',
  value: 'м. Івано-Франківськ вул. Пулюя 15А'
})

SiteSetting.find_or_create_by(key: :work_hours).update({
  label: 'Робочий час прийому дзвінків',
  value: 'Пн-Пт 8:00-17:00'
})

SiteSetting.find_or_create_by(key: :shop_url).update({
  label: 'Посилання на магазин',
  value: '#'
})

I18n.locale  = :en
# == Schema Information
#
# Table name: services
#
#  id         :bigint(8)        not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :service do
    sequence :image do |n|
      x = n % 4
      x = 4 if x.zero?
      Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'services', "pic#{x}.jpg"))
    end
  end
end

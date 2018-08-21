# == Schema Information
#
# Table name: blogs
#
#  id         :bigint(8)        not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :blog do
    sequence :cover do |n|
      x = n % 4
      x = 4 if x.zero?
      Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'blog', "#{x}.jpg"))
    end
  end
end

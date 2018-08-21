# == Schema Information
#
# Table name: team_members
#
#  id         :bigint(8)        not null, primary key
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :team_member do
    sequence :photo do |n|
      x = n % 4
      x = 4 if x.zero?
      Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'team', "team_#{x}.jpg"))
    end
  end
end

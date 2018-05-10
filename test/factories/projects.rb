# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer          default(1)
#  page_cover :string
#

FactoryBot.define do
  factory :project do
    sequence :cover do |n|
      x = n % 5
      x = 4 if x.zero?
      Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'projects', "#{x}.jpg"))
    end
  end
end

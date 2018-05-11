# == Schema Information
#
# Table name: slides
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  text_color :string           default("#fff")
#  position   :integer          default(1)
#

FactoryBot.define do
  factory :slide do
    sequence :image do |n|
      x = n % 2
      x = 2 if x.zero?
      Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'slider', "banner#{x}.jpg"))
    end
  end
end

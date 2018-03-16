# == Schema Information
#
# Table name: project_images
#
#  id         :integer          not null, primary key
#  image      :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :project_image do
    image "MyString"
  end
end

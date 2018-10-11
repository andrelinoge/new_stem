# == Schema Information
#
# Table name: project_images
#
#  id         :bigint(8)        not null, primary key
#  image      :string
#  project_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :project_image do
    image "MyString"
  end
end

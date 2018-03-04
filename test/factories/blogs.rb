# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :blog do
    cover "MyString"
  end
end

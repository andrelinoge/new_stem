# == Schema Information
#
# Table name: static_pages
#
#  id         :bigint(8)        not null, primary key
#  key        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :static_page do
    key "MyString"
  end
end

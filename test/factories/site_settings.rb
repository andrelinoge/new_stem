# == Schema Information
#
# Table name: site_settings
#
#  id         :bigint(8)        not null, primary key
#  key        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :site_setting do
    key "MyString"
  end
end

# == Schema Information
#
# Table name: site_settings
#
#  id         :integer          not null, primary key
#  key        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :site_setting do
    key "MyString"
  end
end

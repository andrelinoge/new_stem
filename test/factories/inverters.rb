# == Schema Information
#
# Table name: inverters
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default(0)
#  price_per_kw :float
#  range_min    :integer
#  range_max    :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :inverter do
    name "MyString"
    category 1
    price_per_kw 1.5
    range_min 1
    range_max 1
  end
end

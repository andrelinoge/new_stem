# == Schema Information
#
# Table name: montages
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default("roof")
#  price_per_kw :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :montage do
    name "MyString"
    category 1
    price_per_kw 1.5
  end
end

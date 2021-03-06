# == Schema Information
#
# Table name: fastenings
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default("roof")
#  price_per_kw :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryBot.define do
  factory :fastening do
    name "MyString"
    category 1
    price_per_kw 1.5
  end
end

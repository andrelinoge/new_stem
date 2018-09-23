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

class Inverter < ApplicationRecord
	enum category: [:cheap, :standard, :premium]

	validates_presence_of :name, :category, :price_per_kw
	validates :price_per_kw, numericality: true

  scope :in_range, -> (value) { where('? > range_min AND ? <= range_max', value, value) }
  scope :by_category, -> (value) { where(category: value) }
end

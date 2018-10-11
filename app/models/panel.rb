# == Schema Information
#
# Table name: panels
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default("cheap")
#  price_per_kw :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Panel < ApplicationRecord
	enum category: [:cheap, :standard, :premium]

	validates_presence_of :name, :category, :price_per_kw
	validates :price_per_kw, numericality: true
end

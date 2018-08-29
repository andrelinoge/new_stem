# == Schema Information
#
# Table name: fastenings
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default(0)
#  price_per_kw :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Fastening < ApplicationRecord
	enum category: [:roof, :ground]

	validates_presence_of :name, :category, :price_per_kw
	validates :price_per_kw, numericality: true
end

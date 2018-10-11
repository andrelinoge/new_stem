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

class Montage < ApplicationRecord
	enum category: [:roof, :ground]

	validates_presence_of :name, :category, :price_per_kw
	validates :price_per_kw, numericality: true
end

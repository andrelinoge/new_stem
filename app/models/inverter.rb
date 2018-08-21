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
end

# == Schema Information
#
# Table name: panels
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default(0)
#  price_per_kw :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Panel < ApplicationRecord
end

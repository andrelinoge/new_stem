# == Schema Information
#
# Table name: inverters
#
#  id         :bigint(8)        not null, primary key
#  name       :string
#  category   :integer          default("cheap")
#  price      :float
#  range_min  :integer
#  range_max  :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class InverterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

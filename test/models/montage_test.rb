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

require 'test_helper'

class MontageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

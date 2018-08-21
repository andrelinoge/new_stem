# == Schema Information
#
# Table name: components
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  category     :integer          default(0)
#  price_per_kw :float
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class ComponentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

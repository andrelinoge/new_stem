# == Schema Information
#
# Table name: slides
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  text_color :string           default("#fff")
#  position   :integer          default(1)
#

require 'test_helper'

class SlideTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

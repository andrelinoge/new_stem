# == Schema Information
#
# Table name: content_blocks
#
#  id         :integer          not null, primary key
#  key        :string
#  visible    :boolean          default(TRUE)
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContentBlockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

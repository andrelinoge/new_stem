# == Schema Information
#
# Table name: content_blocks
#
#  id         :bigint(8)        not null, primary key
#  key        :string
#  visible    :boolean          default(TRUE)
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ContentBlockTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

# == Schema Information
#
# Table name: projects
#
#  id         :bigint(8)        not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer          default(1)
#  page_cover :string
#

require 'test_helper'

class ProjectTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

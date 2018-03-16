# == Schema Information
#
# Table name: project_images
#
#  id         :integer          not null, primary key
#  image      :string
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ProjectImageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

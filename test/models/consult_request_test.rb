# == Schema Information
#
# Table name: consult_requests
#
#  id         :bigint(8)        not null, primary key
#  user_name  :string
#  phone      :string
#  is_new     :boolean          default(FALSE)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class ConsultRequestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

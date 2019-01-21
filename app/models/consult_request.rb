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

class ConsultRequest < ApplicationRecord
  validates_presence_of :user_name, :phone 

  scope :ordered, -> { order(created_at: :asc) }

  def mark_as_read!
    update(is_new: true)
  end
end

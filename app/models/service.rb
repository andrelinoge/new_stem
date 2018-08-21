# == Schema Information
#
# Table name: services
#
#  id         :bigint(8)        not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ApplicationRecord
  translates :title, :content
  mount_uploader :image, ServiceImageUploader

  scope :for_bottom_nav, -> { order(id: :desc).limit(6) }
  scope :ordered, -> { order(id: :asc) }
end

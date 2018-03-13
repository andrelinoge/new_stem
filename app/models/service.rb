# == Schema Information
#
# Table name: services
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Service < ApplicationRecord
  translates :title, :content
  mount_uploader :image, ServiceImageUploader
end

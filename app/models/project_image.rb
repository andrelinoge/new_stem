# == Schema Information
#
# Table name: project_images
#
#  id         :bigint(8)        not null, primary key
#  image      :string
#  project_id :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ProjectImage < ApplicationRecord
  translates :title, :description
  mount_uploader :image, ProjectImageUploader

  validates_presence_of :image

  belongs_to :project
end

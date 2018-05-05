# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  position   :integer          default(1)
#

class Project < ApplicationRecord
  mount_uploader :cover, ProjectCoverUploader
  translates :title, :description, :content, :meta_keys, :meta_description

  has_many :project_images, dependent: :destroy

  scope :recent, -> { order(position: :desc) }
  scope :recent_for_index, -> { order(position: :desc).limit(8) }
end

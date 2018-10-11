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

class Project < ApplicationRecord
  mount_uploader :cover, ProjectCoverUploader
  mount_uploader :page_cover, ProjectPageCoverUploader
  translates :title, :description, :content, :meta_keys, :meta_description

  has_many :project_images, dependent: :destroy
  validates_presence_of :cover

  scope :recent, -> { order(position: :desc) }
  scope :recent_for_index, -> { order(position: :desc).limit(8) }

end

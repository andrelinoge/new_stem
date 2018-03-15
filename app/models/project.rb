# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ApplicationRecord
  mount_uploader :cover, ProjectCoverUploader
  translates :title, :description, :content, :meta_keys, :meta_description

  scope :recent, -> { order(id: :desc).limit(5) }
  scope :recent_for_index, -> { order(id: :desc).limit(8) }
end

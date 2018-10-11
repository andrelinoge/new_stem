# == Schema Information
#
# Table name: blogs
#
#  id         :bigint(8)        not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
  translates :title, :description, :content, :meta_keys, :meta_description
  mount_uploader :cover, BlogCoverUploader

  validates_presence_of :cover

  scope :recent, -> { order(id: :desc).limit(3) }
  scope :recent_for_index, -> { order(id: :desc).limit(3) }
end

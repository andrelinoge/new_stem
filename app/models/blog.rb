# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ApplicationRecord
  translates :title, :description, :content, :meta_keys, :meta_description
  mount_uploader :cover, BlogCoverUploader
end

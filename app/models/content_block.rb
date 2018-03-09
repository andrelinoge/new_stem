# == Schema Information
#
# Table name: content_blocks
#
#  id         :integer          not null, primary key
#  key        :string
#  visible    :boolean          default(TRUE)
#  cover      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContentBlock < ApplicationRecord
  translates :title, :content, :small_title
  mount_uploader :cover, BlogCoverUploader

  def ContentBlock.[](str)
    self.find_by(key: str)
  end
end

# == Schema Information
#
# Table name: content_blocks
#
#  id         :bigint(8)        not null, primary key
#  key        :string
#  visible    :boolean          default(TRUE)
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContentBlock < ApplicationRecord
  translates :title, :content, :small_title
  mount_uploader :image, ContentBlockImageUploader

  def ContentBlock.[](str)
    self.find_by(key: str)
  end
end

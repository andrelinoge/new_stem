# == Schema Information
#
# Table name: slides
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  text_color :string           default("#fff")
#  position   :integer          default(1)
#

class Slide < ApplicationRecord
  translates :title, :small_title, :content
  mount_uploader :image, SlideImageUploader

  scope :ordered, -> { order(position: :desc) }

  validates_presence_of :image
end

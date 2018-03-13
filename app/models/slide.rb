# == Schema Information
#
# Table name: slides
#
#  id         :integer          not null, primary key
#  image      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Slide < ApplicationRecord
  translates :title, :small_title, :content
  mount_uploader :image, SlideImageUploader
end

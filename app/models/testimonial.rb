# == Schema Information
#
# Table name: testimonials
#
#  id         :bigint(8)        not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Testimonial < ApplicationRecord
  translates :author, :position, :content
end

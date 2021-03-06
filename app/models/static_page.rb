# == Schema Information
#
# Table name: static_pages
#
#  id         :bigint(8)        not null, primary key
#  key        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Available pages: 
#   :about_us
#   :contact_us
#   :blog_list
#   :project_list
#   :landing
#   :calc
#   :consult_request

class StaticPage < ApplicationRecord
  translates :content, :meta_keys, :meta_description, :label, :title

  def StaticPage.[](str)
    self.find_by(key: str)
  end
end

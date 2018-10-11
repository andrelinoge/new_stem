# == Schema Information
#
# Table name: site_settings
#
#  id         :bigint(8)        not null, primary key
#  key        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class SiteSetting < ApplicationRecord
  translates :value, :label

  def SiteSetting.[](str)
    self.find_by(key: str).try(:value)
  end
end

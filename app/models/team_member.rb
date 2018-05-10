# == Schema Information
#
# Table name: team_members
#
#  id         :integer          not null, primary key
#  photo      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class TeamMember < ApplicationRecord
  mount_uploader :photo, TeamMemberPhotoUploader
  translates :name, :position

  validates_presence_of :photo
end

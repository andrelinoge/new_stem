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

FactoryBot.define do
  factory :content_block do
    key :test
    visible { true }
    cover {
      [nil, nil, nil, 
        Rack::Test::UploadedFile.new(Dir[Rails.root.join('spec', 'support', 'files', 'infographics', '*.*')].sample)
      ].sample
    }
  end
end

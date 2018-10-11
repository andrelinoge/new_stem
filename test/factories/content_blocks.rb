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

FactoryBot.define do
  factory :content_block do
    key :test
    visible { true }
    image {
      [nil, nil, nil, 
        Rack::Test::UploadedFile.new(Dir[Rails.root.join('test', 'fixtures', 'misc', '*.*')].sample)
      ].sample
    }
  end
end

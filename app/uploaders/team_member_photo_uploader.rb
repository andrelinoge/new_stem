class TeamMemberPhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_cover.jpg"].compact.join('_'))
  end

  version :medium do
    process resize_to_fit: [500, 500]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
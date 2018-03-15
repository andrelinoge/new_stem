class ProjectCoverUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_cover.jpg"].compact.join('_'))
  end

  version :small do
    process resize_to_fit: [200, 100]
  end

  version :medium do
    process resize_to_fit: [350, 250]
  end

  version :tall do
    process resize_to_fit: [600, 800]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
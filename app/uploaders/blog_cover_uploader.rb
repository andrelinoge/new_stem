class BlogCoverUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  def default_url(*args)
    # For Rails 3.1+ asset pipeline compatibility:
    # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
    ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default_cover.jpg"].compact.join('_'))
  end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  version :preview_for_recent do
    process resize_to_fit: [350, 250]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
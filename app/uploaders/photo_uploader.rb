# encoding: utf-8
# See https://github.com/jnicklas/carrierwave#readme

class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  storage :file

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process :resize_to_fill => [50,50]
  end

  version :mobile do
    process :resize_to_fill => [240,240]
  end
  def extension_white_list
    %w(jpg jpeg gif png)
  end

  def filename
    "fish_photo.jpg" if original_filename
  end
end

class Photo < ActiveRecord::Base
  belongs_to :fish

  mount_uploader :file, PhotoUploader
end

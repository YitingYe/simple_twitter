class AvatarUploader < CarrierWave::Uploader::Base
<<<<<<< HEAD

=======
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  storage :file
  # storage :fog

  # Override the directory where uploaded files will be stored.
  # This is a sensible default for uploaders that are meant to be mounted:
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url(*args)
<<<<<<< HEAD
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
=======
  # #   # For Rails 3.1+ asset pipeline compatibility:
  #    ActionController::Base.helpers.asset_path("fallback/" +["avatar.png"].compact.join('_'))
  # #
  # #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end
  #
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end
  #
  # version :medium do
  #   process resize_to_fit: [150, 150]
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
  # end

  # Process files as they are uploaded:
  # process scale: [200, 300]
  #
  # def scale(width, height)
  #   # do something
  # end

  # Create different versions of your uploaded files:
  # version :thumb do
  #   process resize_to_fit: [50, 50]
  # end

  # Add a white list of extensions which are allowed to be uploaded.
  # For images you might use something like this:
  # def extension_whitelist
  #   %w(jpg jpeg gif png)
  # end

  # Override the filename of the uploaded files:
  # Avoid using model.id or version_name here, see uploader/store.rb for details.
  # def filename
  #   "something.jpg" if original_filename
  # end
<<<<<<< HEAD

=======
>>>>>>> 3f687d8450c1b3408c06805c3dccba381bd73b72
end

class PhotoUploader < CarrierWave::Uploader::Base
    include CarrierWave::MiniMagick
    
    
    storage :file
    
    def store_dir
        "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end

    version :thumb do
        process resize_to_fill: [300,200]
    end

    def extension_whitelist
        %w(jpg jpeg gif png)
    end

    def filename
      super.chomp(File.extname(super)) + '.png' if original_filename.present?
    end
  end
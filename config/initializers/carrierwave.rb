# CarrierWave.configure do |config|
#     config.cache_storage = :file
#     config.asset_host = ENV['UPLOAD_HOST']
#     config.sftp_host = ENV['SFTP_HOST']
#     config.sftp_user = ENV['SFTP_USER']
#     config.sftp_folder = ENV['SFTP_FOLDER']
#     config.sftp_url = ENV['UPLOAD_HOST']
#     config.sftp_options = {
#       password: ENV['SFTP_PASSWORD'],
#       port: 22
#     }
#   end
  
  module CarrierWave
    module MiniMagick
      def quality(percentage)
        manipulate! do |img|
          img.quality(percentage.to_s)
          img = yield(img) if block_given?
          img
        end
      end
    end
  end
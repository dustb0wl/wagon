module Locomotive::Wagon

  module PersistAssetsConcern

    def replace_with_content_assets!(text)
      return text if text.blank?

      text.to_s.gsub(/\/samples\/\S*\.[a-zA-Z0-9]+/) do |match|
        url = __content_assets_pusher__.persist(match)
        url || match
      end
    end

  end

end

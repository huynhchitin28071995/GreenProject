module ApplicationHelper
    def preload_image
        asset_pack_path 'media/images/preload.gif'
    end
    def load_image (image)
        if ActiveStorage::Blob.service.class.name.include?('Disk')
            url_for(image)
        end

    end
end

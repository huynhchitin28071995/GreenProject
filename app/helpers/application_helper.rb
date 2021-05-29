module ApplicationHelper
    def preload_image
        asset_pack_path 'media/images/loading.gif'
    end
    def load_image (obj)
        return default_image unless obj.image.attached?
        if ActiveStorage::Blob.service.class.name.include?('Disk')
            url_for(obj.image)
        end

    end
    def default_image
        asset_pack_path 'media/images/No_img.jpg'
    end
end

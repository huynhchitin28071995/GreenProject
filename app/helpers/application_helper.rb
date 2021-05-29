module ApplicationHelper
  def preload_image
    asset_pack_path 'media/images/preload.gif'
  end

  def load_image(image)
    url_for(image) if ActiveStorage::Blob.service.class.name.include?('Disk')
  end

  def load_product_image(product)
    return default_image unless product.image.attached?

    load_image product.image
  end

  def default_image
    asset_pack_path 'media/images/no-image.png'
  end

  def get_discount(product)
    product.event.discount
  end
end

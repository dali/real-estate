module PropertiesHelper

    def thumbnail property
        img = property.photo.present? ? property.photo.thumb.url : "placeholder.jpg"
        image_tag img, class: "property-thumb"
    end
end

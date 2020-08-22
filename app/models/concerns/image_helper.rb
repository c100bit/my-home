# frozen_string_literal: true

module ImageHelper
  extend ActiveSupport::Concern
  include Rails.application.routes.url_helpers

  included do
    has_one_attached :image

    validates :image,
              content_type: ['image/png', 'image/jpg', 'image/jpeg'],
              dimension: { width: { in: 50..10_000 },
                           height: { in: 50..10_000 } },
              size: { less_than: 1.megabyte }
  end

  def image_url
    polymorphic_url(image, only_path: true)
  end
end

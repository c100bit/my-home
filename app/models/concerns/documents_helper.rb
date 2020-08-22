# frozen_string_literal: true

module DocumentsHelper
  extend ActiveSupport::Concern
  include Rails.application.routes.url_helpers

  included do
    has_many_attached :documents

    validates :documents,
              size: { less_than: 10.megabyte }
  end

  def documents_url
    polymorphic_url(documents, only_path: true)
  end
end

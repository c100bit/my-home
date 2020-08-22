# frozen_string_literal: true

module Seeds
  module Base
    include ActionDispatch::TestProcess

    def upload_seed_file(file)
      fixture_file_upload(Rails.root.join('db', 'seeds', 'files', file))
    end
  end
end

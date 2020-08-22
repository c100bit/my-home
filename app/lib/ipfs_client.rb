require 'ipfs-api'

class IPFSClient
  attr_reader :client

  def initialize
    @client = IPFS::Connection.new
  end

  def upload_documents(poll)
    folder = IPFS::Upload.folder(poll.id.to_s) do |scope|
      documents.each do |file|
        scope.add_file(file.original_filename) do |fd|
          fd.write file.read
        end
      end
    end
    client.add folder do |node|
      Rails.logger.info "#{node.name}: #{node.hash}\n" if node.finished?
    end
  end
end

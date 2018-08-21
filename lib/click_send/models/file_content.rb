# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Base64-encoded file contents
  class FileContent < BaseModel
    # Base64-encoded file contents
    # @return [String]
    attr_accessor :content

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['content'] = 'content'
      @_hash
    end

    def initialize(content = nil)
      @content = content
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      content = hash['content']

      # Create object from extracted values.
      FileContent.new(content)
    end
  end
end

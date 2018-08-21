# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Contact list import model
  class ContactListImport < BaseModel
    # URL of file to process
    # @return [String]
    attr_accessor :file_url

    # Order of fields in file
    # @return [List of String]
    attr_accessor :field_order

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file_url'] = 'file_url'
      @_hash['field_order'] = 'field_order'
      @_hash
    end

    def initialize(file_url = nil,
                   field_order = nil)
      @file_url = file_url
      @field_order = field_order
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file_url = hash['file_url']
      field_order = hash['field_order']

      # Create object from extracted values.
      ContactListImport.new(file_url,
                            field_order)
    end
  end
end

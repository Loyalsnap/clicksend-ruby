# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostDirectMailArea model
  class PostDirectMailArea < BaseModel
    # Location ID to send to
    # @return [Integer]
    attr_accessor :location_id

    # Number of items to send
    # @return [Integer]
    attr_accessor :quantity

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['location_id'] = 'location_id'
      @_hash['quantity'] = 'quantity'
      @_hash
    end

    def initialize(location_id = nil,
                   quantity = nil)
      @location_id = location_id
      @quantity = quantity
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      location_id = hash['location_id']
      quantity = hash['quantity']

      # Create object from extracted values.
      PostDirectMailArea.new(location_id,
                             quantity)
    end
  end
end

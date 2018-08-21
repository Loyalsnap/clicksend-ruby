# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

require_relative 'address'

module ClickSend
  # PostReturnAddress Model.
  class PostReturnAddress < Address
    # Address model
    # @return [Address]
    attr_accessor :address

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address'] = 'address'
      @_hash = super().merge(@_hash)
      @_hash
    end

    def initialize(address = nil,
                   address_name = nil,
                   address_line_1 = nil,
                   address_city = nil,
                   address_postal_code = nil,
                   address_country = nil,
                   address_line_2 = nil,
                   address_state = nil)
      @address = address

      # Call the constructor of the base class
      super(address_name,
            address_line_1,
            address_city,
            address_postal_code,
            address_country,
            address_line_2,
            address_state)
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address = Address.from_hash(hash['address']) if hash['address']
      address_name = hash['address_name']
      address_line_1 = hash['address_line_1']
      address_city = hash['address_city']
      address_postal_code = hash['address_postal_code']
      address_country = hash['address_country']
      address_line_2 = hash['address_line_2']
      address_state = hash['address_state']

      # Create object from extracted values.
      PostReturnAddress.new(address,
                            address_name,
                            address_line_1,
                            address_city,
                            address_postal_code,
                            address_country,
                            address_line_2,
                            address_state)
    end
  end
end
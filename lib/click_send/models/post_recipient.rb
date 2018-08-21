# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostRecipient model
  class PostRecipient < BaseModel
    # Name of address
    # @return [String]
    attr_accessor :address_name

    # First line of address
    # @return [String]
    attr_accessor :address_line_1

    # Second line of address
    # @return [String]
    attr_accessor :address_line_2

    # City
    # @return [String]
    attr_accessor :address_city

    # State
    # @return [String]
    attr_accessor :address_state

    # Postal code
    # @return [String]
    attr_accessor :address_postal_code

    # Country
    # @return [String]
    attr_accessor :address_country

    # ID of return address to use
    # @return [Integer]
    attr_accessor :return_address_id

    # When to send letter (0/null=now)
    # @return [Integer]
    attr_accessor :schedule

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['address_name'] = 'address_name'
      @_hash['address_line_1'] = 'address_line_1'
      @_hash['address_line_2'] = 'address_line_2'
      @_hash['address_city'] = 'address_city'
      @_hash['address_state'] = 'address_state'
      @_hash['address_postal_code'] = 'address_postal_code'
      @_hash['address_country'] = 'address_country'
      @_hash['return_address_id'] = 'return_address_id'
      @_hash['schedule'] = 'schedule'
      @_hash
    end

    def initialize(address_name = nil,
                   address_line_1 = nil,
                   address_line_2 = nil,
                   address_city = nil,
                   address_state = nil,
                   address_postal_code = nil,
                   address_country = nil,
                   return_address_id = nil,
                   schedule = 0)
      @address_name = address_name
      @address_line_1 = address_line_1
      @address_line_2 = address_line_2
      @address_city = address_city
      @address_state = address_state
      @address_postal_code = address_postal_code
      @address_country = address_country
      @return_address_id = return_address_id
      @schedule = schedule
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      address_name = hash['address_name']
      address_line_1 = hash['address_line_1']
      address_line_2 = hash['address_line_2']
      address_city = hash['address_city']
      address_state = hash['address_state']
      address_postal_code = hash['address_postal_code']
      address_country = hash['address_country']
      return_address_id = hash['return_address_id']
      schedule = hash['schedule'] ||= 0

      # Create object from extracted values.
      PostRecipient.new(address_name,
                        address_line_1,
                        address_line_2,
                        address_city,
                        address_state,
                        address_postal_code,
                        address_country,
                        return_address_id,
                        schedule)
    end
  end
end

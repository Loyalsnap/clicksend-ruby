# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # Campaign Model for SMS
  class SmsCampaign < BaseModel
    # Your list id.
    # @return [Integer]
    attr_accessor :list_id

    # Your campaign name.
    # @return [String]
    attr_accessor :name

    # Your campaign message.
    # @return [String]
    attr_accessor :body

    # Your sender id - more info:
    # http://help.clicksend.com/SMS/what-is-a-sender-id-or-sender-number.
    # @return [String]
    attr_accessor :from

    # Your schedule timestamp.
    # @return [Integer]
    attr_accessor :schedule

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['list_id'] = 'list_id'
      @_hash['name'] = 'name'
      @_hash['body'] = 'body'
      @_hash['from'] = 'from'
      @_hash['schedule'] = 'schedule'
      @_hash
    end

    def initialize(list_id = nil,
                   name = nil,
                   body = nil,
                   from = nil,
                   schedule = 0)
      @list_id = list_id
      @name = name
      @body = body
      @from = from
      @schedule = schedule
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      list_id = hash['list_id']
      name = hash['name']
      body = hash['body']
      from = hash['from']
      schedule = hash['schedule'] ||= 0

      # Create object from extracted values.
      SmsCampaign.new(list_id,
                      name,
                      body,
                      from,
                      schedule)
    end
  end
end

# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # SmsTemplate model
  class SmsTemplate < BaseModel
    # Name of template
    # @return [String]
    attr_accessor :template_name

    # Body of template
    # @return [String]
    attr_accessor :body

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['template_name'] = 'template_name'
      @_hash['body'] = 'body'
      @_hash
    end

    def initialize(template_name = nil,
                   body = nil)
      @template_name = template_name
      @body = body
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      template_name = hash['template_name']
      body = hash['body']

      # Create object from extracted values.
      SmsTemplate.new(template_name,
                      body)
    end
  end
end

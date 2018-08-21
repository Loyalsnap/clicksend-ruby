# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostLetter model
  class PostLetter < BaseModel
    # URL of file to send
    # @return [String]
    attr_accessor :file_url

    # Array of PostRecipient models
    # @return [List of PostRecipient]
    attr_accessor :recipients

    # Whether using our template
    # @return [Integer]
    attr_accessor :template_used

    # Whether letter is duplex
    # @return [Integer]
    attr_accessor :duplex

    # Whether letter is in colour
    # @return [Integer]
    attr_accessor :colour

    # Source being sent from
    # @return [String]
    attr_accessor :source

    # A mapping from model property names to API property names.
    def self.names
      @_hash = {} if @_hash.nil?
      @_hash['file_url'] = 'file_url'
      @_hash['recipients'] = 'recipients'
      @_hash['template_used'] = 'template_used'
      @_hash['duplex'] = 'duplex'
      @_hash['colour'] = 'colour'
      @_hash['source'] = 'source'
      @_hash
    end

    def initialize(file_url = nil,
                   recipients = nil,
                   template_used = 0,
                   duplex = 0,
                   colour = 0,
                   source = 'sdk')
      @file_url = file_url
      @recipients = recipients
      @template_used = template_used
      @duplex = duplex
      @colour = colour
      @source = source
    end

    # Creates an instance of the object from a hash.
    def self.from_hash(hash)
      return nil unless hash

      # Extract variables from the hash.
      file_url = hash['file_url']
      # Parameter is an array, so we need to iterate through it
      recipients = nil
      unless hash['recipients'].nil?
        recipients = []
        hash['recipients'].each do |structure|
          recipients << (PostRecipient.from_hash(structure) if structure)
        end
      end
      template_used = hash['template_used'] ||= 0
      duplex = hash['duplex'] ||= 0
      colour = hash['colour'] ||= 0
      source = hash['source'] ||= 'sdk'

      # Create object from extracted values.
      PostLetter.new(file_url,
                     recipients,
                     template_used,
                     duplex,
                     colour,
                     source)
    end
  end
end

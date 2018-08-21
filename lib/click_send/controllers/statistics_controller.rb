# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # StatisticsController
  class StatisticsController < BaseController
    @instance = StatisticsController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get voice statistics
    # @return String response from the API call
    def get_voice_statistics
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/statistics/voice'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get sms statistics
    # @return String response from the API call
    def get_sms_statistics
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/statistics/sms'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.get(
        _query_url
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end
  end
end

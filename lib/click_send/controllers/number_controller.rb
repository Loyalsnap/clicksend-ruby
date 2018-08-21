# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # NumberController
  class NumberController < BaseController
    @instance = NumberController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get all dedicated numbers
    # @return String response from the API call
    def get_dedicated_numbers
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/numbers'
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

    # Buy dedicated number
    # @param [String] dedicated_number Required parameter: Phone number to
    # purchase
    # @return String response from the API call
    def purchase_dedicated_number(dedicated_number)
      # Validate required parameters.
      validate_parameters(
        'dedicated_number' => dedicated_number
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/numbers/buy/{dedicated_number}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'dedicated_number' => dedicated_number
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
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

    # Get all dedicated numbers by country
    # @param [String] country Required parameter: Country code to search
    # @param [String] search Optional parameter: Your search pattern or query.
    # @param [Integer] search_type Optional parameter: Your strategy for
    # searching, 0 = starts with, 1 = anywhere, 2 = ends with.
    # @return String response from the API call
    def get_dedicated_numbers_by_country(country,
                                         search = nil,
                                         search_type = nil)
      # Validate required parameters.
      validate_parameters(
        'country' => country
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/numbers/search/{country}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'country' => country
      )
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'search' => search,
          'search_type' => search_type
        },
        array_serialization: Configuration.array_serialization
      )
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

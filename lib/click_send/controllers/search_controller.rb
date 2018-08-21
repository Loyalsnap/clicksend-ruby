# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # SearchController
  class SearchController < BaseController
    @instance = SearchController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get list of searched contact list
    # @param [String] q Required parameter: Your keyword or query.
    # @return String response from the API call
    def search_contact_list(q)
      # Validate required parameters.
      validate_parameters(
        'q' => q
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/search/contacts-lists'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'q' => q
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

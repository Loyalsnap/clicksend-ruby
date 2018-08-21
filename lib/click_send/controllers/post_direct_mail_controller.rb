# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostDirectMailController
  class PostDirectMailController < BaseController
    @instance = PostDirectMailController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Search for a location
    # @param [String] country Required parameter: Country Code to search
    # @param [String] q Required parameter: Search term (e.g. post code, city
    # name)
    # @return String response from the API call
    def location_search(country,
                        q)
      # Validate required parameters.
      validate_parameters(
        'country' => country,
        'q' => q
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/direct-mail/locations/search/{country}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'country' => country
      )
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

    # TODO: type endpoint description here
    # @param [PostDirectMail] post_direct_mail Required parameter:
    # PostDirectMail model
    # @return String response from the API call
    def send_campaign(post_direct_mail)
      # Validate required parameters.
      validate_parameters(
        'post_direct_mail' => post_direct_mail
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/direct-mail/campaigns/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: post_direct_mail.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Calculate direct mail campaign price
    # @param [PostDirectMail] post_direct_mail Required parameter:
    # PostDirectMail model
    # @return String response from the API call
    def calculate_price(post_direct_mail)
      # Validate required parameters.
      validate_parameters(
        'post_direct_mail' => post_direct_mail
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/direct-mail/campaigns/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: post_direct_mail.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get direct mail campaigns
    # @return String response from the API call
    def campaigns
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/direct-mail/campaigns'
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

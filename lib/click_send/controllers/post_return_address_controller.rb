# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # PostReturnAddressController
  class PostReturnAddressController < BaseController
    @instance = PostReturnAddressController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create post return address
    # @param [Address] return_address Required parameter: Address model
    # @return String response from the API call
    def create_post_return_address(return_address)
      # Validate required parameters.
      validate_parameters(
        'return_address' => return_address
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: return_address.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get list of post return addresses
    # @return String response from the API call
    def get_post_return_addresses
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses'
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

    # Get specific post return address
    # @param [Integer] return_address_id Required parameter: Return address ID
    # @return String response from the API call
    def get_post_return_address(return_address_id)
      # Validate required parameters.
      validate_parameters(
        'return_address_id' => return_address_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses/{return_address_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'return_address_id' => return_address_id
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

    # Update post return address
    # @param [Integer] return_address_id Required parameter: Return address ID
    # @param [Address] return_address Required parameter: Address model
    # @return String response from the API call
    def update_post_return_address(return_address_id,
                                   return_address)
      # Validate required parameters.
      validate_parameters(
        'return_address_id' => return_address_id,
        'return_address' => return_address
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses/{return_address_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'return_address_id' => return_address_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: return_address.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Delete specific post return address
    # @param [Integer] return_address_id Required parameter: Return address ID
    # @return String response from the API call
    def delete_post_return_address(return_address_id)
      # Validate required parameters.
      validate_parameters(
        'return_address_id' => return_address_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/post/return-addresses/{return_address_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'return_address_id' => return_address_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.delete(
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

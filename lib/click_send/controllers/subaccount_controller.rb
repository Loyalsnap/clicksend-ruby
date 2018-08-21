# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # SubaccountController
  class SubaccountController < BaseController
    @instance = SubaccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get all subaccounts
    # @return String response from the API call
    def get_subaccounts
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts'
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

    # Create new subaccount
    # @param [Subaccount] subaccount Required parameter: Subaccount model
    # @return String response from the API call
    def create_subaccount(subaccount)
      # Validate required parameters.
      validate_parameters(
        'subaccount' => subaccount
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: subaccount.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get specific subaccount
    # @param [Integer] subaccount_id Required parameter: ID of subaccount to
    # get
    # @return String response from the API call
    def get_subaccount(subaccount_id)
      # Validate required parameters.
      validate_parameters(
        'subaccount_id' => subaccount_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'subaccount_id' => subaccount_id
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

    # Delete a subaccount
    # @param [Integer] subaccount_id Required parameter: ID of subaccount to
    # delete
    # @return String response from the API call
    def delete_subaccount(subaccount_id)
      # Validate required parameters.
      validate_parameters(
        'subaccount_id' => subaccount_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'subaccount_id' => subaccount_id
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

    # Regenerate an API Key
    # @param [Integer] subaccount_id Required parameter: ID of subaccount to
    # regenerate API key for
    # @return String response from the API call
    def regenerate_api_key(subaccount_id)
      # Validate required parameters.
      validate_parameters(
        'subaccount_id' => subaccount_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}/regen-api-key'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'subaccount_id' => subaccount_id
      )
      _query_url = APIHelper.clean_url _query_builder

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
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

    # Update subaccount
    # @param [Integer] subaccount_id Required parameter: ID of subaccount to
    # update
    # @param [Subaccount] subaccount Required parameter: Subaccount model
    # @return String response from the API call
    def update_subaccount(subaccount_id,
                          subaccount)
      # Validate required parameters.
      validate_parameters(
        'subaccount_id' => subaccount_id,
        'subaccount' => subaccount
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/subaccounts/{subaccount_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'subaccount_id' => subaccount_id
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
        parameters: subaccount.to_json
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

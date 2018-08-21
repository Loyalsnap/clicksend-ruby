# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # ResellerAccountController
  class ResellerAccountController < BaseController
    @instance = ResellerAccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get list of reseller accounts
    # @return String response from the API call
    def get_reseller_accounts
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts'
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

    # Create reseller account
    # @param [ResellerAccount] reseller_account Required parameter:
    # ResellerAccount model
    # @return String response from the API call
    def create_reseller_account(reseller_account)
      # Validate required parameters.
      validate_parameters(
        'reseller_account' => reseller_account
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: reseller_account.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get Reseller Account
    # @param [Integer] client_user_id Required parameter: User ID of client
    # @return String response from the API call
    def get_reseller_account(client_user_id)
      # Validate required parameters.
      validate_parameters(
        'client_user_id' => client_user_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts/{client_user_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'client_user_id' => client_user_id
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

    # Reseller Account
    # @param [Integer] client_user_id Required parameter: User ID of client
    # @param [ResellerAccount] reseller_account Required parameter:
    # ResellerAccount model
    # @return String response from the API call
    def update_reseller_account(client_user_id,
                                reseller_account)
      # Validate required parameters.
      validate_parameters(
        'client_user_id' => client_user_id,
        'reseller_account' => reseller_account
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/reseller/accounts/{client_user_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'client_user_id' => client_user_id
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
        parameters: reseller_account.to_json
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

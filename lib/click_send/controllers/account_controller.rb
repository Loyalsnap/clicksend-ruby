# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # AccountController
  class AccountController < BaseController
    @instance = AccountController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get account details
    # @return String response from the API call
    def get_account
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account'
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

    # Create An Account
    # @param [Account] account Required parameter: Account model
    # @return String response from the API call
    def create_account(account)
      # Validate required parameters.
      validate_parameters(
        'account' => account
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: account.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Send account activation token
    # @param [AccountVerify] account_verify Required parameter: Account
    # details
    # @return String response from the API call
    def account_verify_send(account_verify)
      # Validate required parameters.
      validate_parameters(
        'account_verify' => account_verify
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account-verify/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: account_verify.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Verify new account
    # @param [Integer] activation_token Required parameter: Example:
    # @return String response from the API call
    def account_verify(activation_token)
      # Validate required parameters.
      validate_parameters(
        'activation_token' => activation_token
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/account-verify/verify/{activation_token}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'activation_token' => activation_token
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

    # Forgot username
    # @param [String] email Required parameter: Email belonging to account
    # @return String response from the API call
    def forgot_username(email)
      # Validate required parameters.
      validate_parameters(
        'email' => email
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/forgot-username'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: email
      )
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Forgot password
    # @param [String] username Required parameter: Username belonging to
    # account
    # @return String response from the API call
    def forgot_password(username)
      # Validate required parameters.
      validate_parameters(
        'username' => username
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/forgot-password'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'text/plain; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: username
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Verify forgot password
    # @param [AccountForgotPasswordVerify] verify_password Required parameter:
    # verifyPassword data
    # @return String response from the API call
    def verify_forgot_password(verify_password)
      # Validate required parameters.
      validate_parameters(
        'verify_password' => verify_password
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/forgot-password/verify'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: verify_password.to_json
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

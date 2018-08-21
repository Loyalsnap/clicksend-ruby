# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # AccountRechargeController
  class AccountRechargeController < BaseController
    @instance = AccountRechargeController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Get Credit Card info
    # @return String response from the API call
    def get_credit_card_info
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/credit-card'
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

    # Update credit card info
    # @param [CreditCard] credit_card Required parameter: CreditCard model
    # @return String response from the API call
    def update_credit_card_info(credit_card)
      # Validate required parameters.
      validate_parameters(
        'credit_card' => credit_card
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/credit-card'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.put(
        _query_url,
        headers: _headers,
        parameters: credit_card.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Get list of all packages
    # @param [String] country Optional parameter: Country code
    # @return String response from the API call
    def get_packages_list(country = nil)
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/packages'
      _query_builder = APIHelper.append_url_with_query_parameters(
        _query_builder,
        {
          'country' => country
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

    # Purchase a package
    # @param [Integer] package_id Required parameter: ID of package to
    # purchase
    # @return String response from the API call
    def purchase_package(package_id)
      # Validate required parameters.
      validate_parameters(
        'package_id' => package_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/purchase/{package_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'package_id' => package_id
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

    # Get all transactions
    # @return String response from the API call
    def get_transactions
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/transactions'
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

    # Get specific Transaction
    # @param [String] transaction_id Required parameter: ID of transaction to
    # retrieve
    # @return String response from the API call
    def get_transaction(transaction_id)
      # Validate required parameters.
      validate_parameters(
        'transaction_id' => transaction_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/recharge/transactions/{transaction_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'transaction_id' => transaction_id
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

# This file was automatically generated for ClickSend by APIMATIC v2.0
# ( https://apimatic.io ).

module ClickSend
  # SmsCampaignController
  class SmsCampaignController < BaseController
    @instance = SmsCampaignController.new

    class << self
      attr_accessor :instance
    end

    def instance
      self.class.instance
    end

    # Create sms campaign
    # @param [SmsCampaign] campaign Required parameter: SmsCampaign model
    # @return String response from the API call
    def create_sms_campaign(campaign)
      # Validate required parameters.
      validate_parameters(
        'campaign' => campaign
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/send'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: campaign.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Calculate price for sms campaign
    # @param [SmsCampaign] campaign Required parameter: SmsCampaign model
    # @return String response from the API call
    def calculate_price(campaign)
      # Validate required parameters.
      validate_parameters(
        'campaign' => campaign
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/price'
      _query_url = APIHelper.clean_url _query_builder

      # Prepare headers.
      _headers = {
        'content-type' => 'application/json; charset=utf-8'
      }

      # Prepare and execute HttpRequest.
      _request = @http_client.post(
        _query_url,
        headers: _headers,
        parameters: campaign.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Update sms campaign
    # @param [Integer] sms_campaign_id Required parameter: ID of SMS campaign to
    # update
    # @param [SmsCampaign] campaign Required parameter: SmsCampaign model
    # @return String response from the API call
    def update_sms_campaign(sms_campaign_id,
                            campaign)
      # Validate required parameters.
      validate_parameters(
        'sms_campaign_id' => sms_campaign_id,
        'campaign' => campaign
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/{sms_campaign_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'sms_campaign_id' => sms_campaign_id
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
        parameters: campaign.to_json
      )
      BasicAuth.apply(_request)
      _context = execute_request(_request)

      # Validate response against endpoint and global error codes.
      return nil if _context.response.status_code == 404
      validate_response(_context)

      # Return appropriate response type.
      _context.response.raw_body
    end

    # Cancel sms campaign
    # @param [Integer] sms_campaign_id Required parameter: ID of SMS Campaign to
    # cancel
    # @return String response from the API call
    def cancel_sms_campaign(sms_campaign_id)
      # Validate required parameters.
      validate_parameters(
        'sms_campaign_id' => sms_campaign_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns/{sms_campaign_id}/cancel'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'sms_campaign_id' => sms_campaign_id
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

    # Get list of sms campaigns
    # @return String response from the API call
    def get_sms_campaigns
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaigns'
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

    # Get specific sms campaign
    # @param [Integer] sms_campaign_id Required parameter: ID of SMS campaign to
    # retrieve
    # @return String response from the API call
    def get_sms_campaign(sms_campaign_id)
      # Validate required parameters.
      validate_parameters(
        'sms_campaign_id' => sms_campaign_id
      )
      # Prepare query url.
      _query_builder = Configuration.base_uri.dup
      _query_builder << '/sms-campaign/{sms_campaign_id}'
      _query_builder = APIHelper.append_url_with_template_parameters(
        _query_builder,
        'sms_campaign_id' => sms_campaign_id
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

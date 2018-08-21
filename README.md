# Getting started

Clicksend v3 API

## How to Build

This client library is a Ruby gem which can be compiled and used in your Ruby and Ruby on Rails project. This library requires a few gems from the RubyGems repository.

1. Open the command line interface or the terminal and navigate to the folder containing the source code.
2. Run ``` gem build click_send.gemspec ``` to build the gem.
3. Once built, the gem can be installed on the current work environment using ``` gem install click_send-3.1.0.gem ```

![Building Gem](https://apidocs.io/illustration/ruby?step=buildSDK&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend-Ruby&projectName=click_send&gemName=click_send&gemVer=3.1.0)

## How to Use

The following section explains how to use the ClickSend Ruby Gem in a new Rails project using RubyMine&trade;. The basic workflow presented here is also applicable if you prefer using a different editor or IDE.

### 1. Starting a new project

Close any existing projects in RubyMine&trade; by selecting ``` File -> Close Project ```. Next, click on ``` Create New Project ``` to create a new project from scratch.

![Create a new project in RubyMine](https://apidocs.io/illustration/ruby?step=createNewProject0&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

Next, provide ``` TestApp ``` as the project name, choose ``` Rails Application ``` as the project type, and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 1](https://apidocs.io/illustration/ruby?step=createNewProject1&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

In the next dialog make sure that correct *Ruby SDK* is being used (minimum 2.0.0) and click ``` OK ```.

![Create a new Rails Application in RubyMine - step 2](https://apidocs.io/illustration/ruby?step=createNewProject2&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

This will create a new Rails Application project with an existing set of files and folder.

### 2. Add reference of the gem

In order to use the ClickSend gem in the new project we must add a gem reference. Locate the ```Gemfile``` in the *Project Explorer* window under the ``` TestApp ``` project node. The file contains references to all gems being used in the project. Here, add the reference to the library gem by adding the following line: ``` gem 'click_send', '~> 3.1.0' ```

![Add references of the Gemfile](https://apidocs.io/illustration/ruby?step=addReference&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

### 3. Adding a new Rails Controller

Once the ``` TestApp ``` project is created, a folder named ``` controllers ``` will be visible in the *Project Explorer* under the following path: ``` TestApp > app > controllers ```. Right click on this folder and select ``` New -> Run Rails Generator... ```.

![Run Rails Generator on Controllers Folder](https://apidocs.io/illustration/ruby?step=addCode0&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

Selecting the said option will popup a small window where the generator names are displayed. Here, select the ``` controller ``` template.

![Create a new Controller](https://apidocs.io/illustration/ruby?step=addCode1&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

Next, a popup window will ask you for a Controller name and included Actions. For controller name provide ``` Hello ``` and include an action named ``` Index ``` and click ``` OK ```.

![Add a new Controller](https://apidocs.io/illustration/ruby?step=addCode2&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

A new controller class anmed ``` HelloController ``` will be created in a file named ``` hello_controller.rb ``` containing a method named ``` Index ```. In this method, add code for initialization and a sample for its usage.

![Initialize the library](https://apidocs.io/illustration/ruby?step=addCode3&workspaceFolder=ClickSend-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0)

## How to Test

You can test the generated SDK and the server with automatically generated test
cases as follows:

  1. From terminal/cmd navigate to the root directory of the SDK.
  2. Invoke: `bundle exec rake`

## Initialization

### Authentication
In order to setup authentication and initialization of the API client, you need the following information.

| Parameter | Description |
|-----------|-------------|
| username | your username |
| key | your api key |



API client can be initialized as following.

```ruby
# Configuration parameters and credentials
username = 'username' # your username
key = 'key' # your api key

client = ClickSend::ClickSend.new(
  username: username,
  key: key
)
```

The added initlization code can be debugged by putting a breakpoint in the ``` Index ``` method and running the project in debug mode by selecting ``` Run -> Debug 'Development: TestApp' ```.

![Debug the TestApp](https://apidocs.io/illustration/ruby?step=addCode4&workspaceFolder=ClickSend%20v3%20API-Ruby&workspaceName=ClickSend&projectName=click_send&gemName=click_send&gemVer=3.1.0&initLine=client%2520%253D%2520ClickSend.new%2528%2527username%2527%252C%2520%2527key%2527%2529)



# Class Reference

## <a name="list_of_controllers"></a>List of Controllers

* [CountriesController](#countries_controller)
* [SMSController](#sms_controller)
* [VoiceController](#voice_controller)
* [AccountController](#account_controller)
* [SubaccountController](#subaccount_controller)
* [ContactListController](#contact_list_controller)
* [ContactController](#contact_controller)
* [NumberController](#number_controller)
* [StatisticsController](#statistics_controller)
* [EmailToSmsController](#email_to_sms_controller)
* [SearchController](#search_controller)
* [ReferralAccountController](#referral_account_controller)
* [ResellerAccountController](#reseller_account_controller)
* [TransferCreditController](#transfer_credit_controller)
* [AccountRechargeController](#account_recharge_controller)
* [SmsCampaignController](#sms_campaign_controller)
* [PostLetterController](#post_letter_controller)
* [PostReturnAddressController](#post_return_address_controller)
* [FaxController](#fax_controller)
* [MMSController](#mms_controller)
* [PostPostcardController](#post_postcard_controller)
* [UploadController](#upload_controller)
* [PostDirectMailController](#post_direct_mail_controller)

## <a name="countries_controller"></a>![Class: ](https://apidocs.io/img/class.png ".CountriesController") CountriesController

### Get singleton instance

The singleton instance of the ``` CountriesController ``` class can be accessed from the API Client.

```ruby
countries_controller = client.countries
```

### <a name="get_countries"></a>![Method: ](https://apidocs.io/img/method.png ".CountriesController.get_countries") get_countries

> *Tags:*  ``` Skips Authentication ``` 

> Get all countries


```ruby
def get_countries; end
```

#### Example Usage

```ruby

result = countries_controller.get_countries()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SMSController") SMSController

### Get singleton instance

The singleton instance of the ``` SMSController ``` class can be accessed from the API Client.

```ruby
sMS_controller = client.sms
```

### <a name="send_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.send_sms") send_sms

> Send one or more SMS messages


```ruby
def send_sms(sms_messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_messages |  ``` Required ```  | SmsMessageCollection model |


#### Example Usage

```ruby
sms_messages = SmsMessageCollection.new

result = sMS_controller.send_sms(sms_messages)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.calculate_price") calculate_price

> Calculate sms price


```ruby
def calculate_price(sms_messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_messages |  ``` Required ```  | SmsMessageCollection model |


#### Example Usage

```ruby
sms_messages = SmsMessageCollection.new

result = sMS_controller.calculate_price(sms_messages)

```


### <a name="export_history"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.export_history") export_history

> Export all sms history


```ruby
def export_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | Filename to download history as |


#### Example Usage

```ruby
filename = 'filename'

result = sMS_controller.export_history(filename)

```


### <a name="create_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_receipt") create_receipt

> Add a delivery receipt


```ruby
def create_receipt(url); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |


#### Example Usage

```ruby
url = 'url'

result = sMS_controller.create_receipt(url)

```


### <a name="mark_receipts_as_read"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.mark_receipts_as_read") mark_receipts_as_read

> Marked delivery receipts as read


```ruby
def mark_receipts_as_read(date_before = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_before |  ``` Optional ```  | Mark all as read before this timestamp |


#### Example Usage

```ruby
date_before = 'date_before'

result = sMS_controller.mark_receipts_as_read(date_before)

```


### <a name="get_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_inbound_sms") get_inbound_sms

> Get all inbound sms


```ruby
def get_inbound_sms; end
```

#### Example Usage

```ruby

result = sMS_controller.get_inbound_sms()

```


### <a name="create_inbound_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_inbound_sms") create_inbound_sms

> Create inbound sms


```ruby
def create_inbound_sms(url); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| url |  ``` Required ```  | Your url |


#### Example Usage

```ruby
url = 'url'

result = sMS_controller.create_inbound_sms(url)

```


### <a name="cancel_scheduled_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.cancel_scheduled_sms") cancel_scheduled_sms

> Update scheduled message as cancel


```ruby
def cancel_scheduled_sms(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | The message ID you want to cancel |


#### Example Usage

```ruby
message_id = 'message_id'

result = sMS_controller.cancel_scheduled_sms(message_id)

```


### <a name="cancel_all_scheduled_sms"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.cancel_all_scheduled_sms") cancel_all_scheduled_sms

> Update all scheduled message as cancelled


```ruby
def cancel_all_scheduled_sms; end
```

#### Example Usage

```ruby

result = sMS_controller.cancel_all_scheduled_sms()

```


### <a name="create_sms_template"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.create_sms_template") create_sms_template

> Create sms template


```ruby
def create_sms_template(sms_template); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_template |  ``` Required ```  | SmsTemplate model |


#### Example Usage

```ruby
sms_template = SmsTemplate.new

result = sMS_controller.create_sms_template(sms_template)

```


### <a name="delete_sms_template"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.delete_sms_template") delete_sms_template

> Delete sms template


```ruby
def delete_sms_template(template_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_id |  ``` Required ```  | Template id |


#### Example Usage

```ruby
template_id = 86

result = sMS_controller.delete_sms_template(template_id)

```


### <a name="update_sms_template"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.update_sms_template") update_sms_template

> Update sms template


```ruby
def update_sms_template(template_id,
                            sms_template); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| template_id |  ``` Required ```  | Template id |
| sms_template |  ``` Required ```  | Template item |


#### Example Usage

```ruby
template_id = 86
sms_template = SmsTemplate.new

result = sMS_controller.update_sms_template(template_id, sms_template)

```


### <a name="get_delivery_receipts"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_delivery_receipts") get_delivery_receipts

> Get all delivery receipts


```ruby
def get_delivery_receipts; end
```

#### Example Usage

```ruby

result = sMS_controller.get_delivery_receipts()

```


### <a name="get_sms_templates"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_sms_templates") get_sms_templates

> Get lists of all sms templates


```ruby
def get_sms_templates; end
```

#### Example Usage

```ruby

result = sMS_controller.get_sms_templates()

```


### <a name="mark_all_inbound_sms_as_read"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.mark_all_inbound_sms_as_read") mark_all_inbound_sms_as_read

> Mark all inbound SMS as read optionally before a certain date


```ruby
def mark_all_inbound_sms_as_read(date_before = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_before |  ``` Optional ```  | An optional timestamp - mark all as read before this timestamp. If not given, all messages will be marked as read. |


#### Example Usage

```ruby
date_before = 'date_before'

result = sMS_controller.mark_all_inbound_sms_as_read(date_before)

```


### <a name="get_specific_delivery_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_specific_delivery_receipt") get_specific_delivery_receipt

> Get a Specific Delivery Receipt


```ruby
def get_specific_delivery_receipt(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | Message ID |


#### Example Usage

```ruby
message_id = 'message_id'

result = sMS_controller.get_specific_delivery_receipt(message_id)

```


### <a name="get_sms_history"></a>![Method: ](https://apidocs.io/img/method.png ".SMSController.get_sms_history") get_sms_history

> Get all sms history


```ruby
def get_sms_history(date_from = nil,
                        date_to = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_from |  ``` Optional ```  | Start date |
| date_to |  ``` Optional ```  | End date |


#### Example Usage

```ruby
date_from = 86
date_to = 86

result = sMS_controller.get_sms_history(date_from, date_to)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="voice_controller"></a>![Class: ](https://apidocs.io/img/class.png ".VoiceController") VoiceController

### Get singleton instance

The singleton instance of the ``` VoiceController ``` class can be accessed from the API Client.

```ruby
voice_controller = client.voice
```

### <a name="send_voice"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.send_voice") send_voice

> Send a voice call


```ruby
def send_voice(voice_messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| voice_messages |  ``` Required ```  | VoiceMessageCollection model |


#### Example Usage

```ruby
voice_messages = VoiceMessageCollection.new

result = voice_controller.send_voice(voice_messages)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.calculate_price") calculate_price

> Calculate voice price


```ruby
def calculate_price(voice_messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| voice_messages |  ``` Required ```  | VoiceMessageCollection model |


#### Example Usage

```ruby
voice_messages = VoiceMessageCollection.new

result = voice_controller.calculate_price(voice_messages)

```


### <a name="get_voice_languages"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.get_voice_languages") get_voice_languages

> Get all voice languages


```ruby
def get_voice_languages; end
```

#### Example Usage

```ruby

result = voice_controller.get_voice_languages()

```


### <a name="get_voice_receipts"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.get_voice_receipts") get_voice_receipts

> Get all voice receipts


```ruby
def get_voice_receipts; end
```

#### Example Usage

```ruby

result = voice_controller.get_voice_receipts()

```


### <a name="cancel_voice_message"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.cancel_voice_message") cancel_voice_message

> Update voice message status as cancelled


```ruby
def cancel_voice_message(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | Your voice message id |


#### Example Usage

```ruby
message_id = 'message_id'

result = voice_controller.cancel_voice_message(message_id)

```


### <a name="cancel_voice_messages"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.cancel_voice_messages") cancel_voice_messages

> Update all voice messages as cancelled


```ruby
def cancel_voice_messages; end
```

#### Example Usage

```ruby

result = voice_controller.cancel_voice_messages()

```


### <a name="export_voice_history"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.export_voice_history") export_voice_history

> Export voice history


```ruby
def export_voice_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | Filename to export to |


#### Example Usage

```ruby
filename = 'filename'

result = voice_controller.export_voice_history(filename)

```


### <a name="get_voice_history"></a>![Method: ](https://apidocs.io/img/method.png ".VoiceController.get_voice_history") get_voice_history

> Get all voice history


```ruby
def get_voice_history(date_from = nil,
                          date_to = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_from |  ``` Optional ```  | Timestamp (from) used to show records by date. |
| date_to |  ``` Optional ```  | Timestamp (to) used to show records by date |


#### Example Usage

```ruby
date_from = 177
date_to = 177

result = voice_controller.get_voice_history(date_from, date_to)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountController") AccountController

### Get singleton instance

The singleton instance of the ``` AccountController ``` class can be accessed from the API Client.

```ruby
account_controller = client.account
```

### <a name="get_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.get_account") get_account

> Get account details


```ruby
def get_account; end
```

#### Example Usage

```ruby

result = account_controller.get_account()

```


### <a name="create_account"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.create_account") create_account

> Create An Account


```ruby
def create_account(account); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account |  ``` Required ```  | Account model |


#### Example Usage

```ruby
account = Account.new

result = account_controller.create_account(account)

```


### <a name="account_verify_send"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.account_verify_send") account_verify_send

> Send account activation token


```ruby
def account_verify_send(account_verify); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| account_verify |  ``` Required ```  | Account details |


#### Example Usage

```ruby
account_verify = AccountVerify.new

result = account_controller.account_verify_send(account_verify)

```


### <a name="account_verify"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.account_verify") account_verify

> Verify new account


```ruby
def account_verify(activation_token); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| activation_token |  ``` Required ```  | TODO: Add a parameter description |


#### Example Usage

```ruby
activation_token = 177

result = account_controller.account_verify(activation_token)

```


### <a name="forgot_username"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.forgot_username") forgot_username

> *Tags:*  ``` Skips Authentication ``` 

> Forgot username


```ruby
def forgot_username(email); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email |  ``` Required ```  | Email belonging to account |


#### Example Usage

```ruby
email = 'email'

result = account_controller.forgot_username(email)

```


### <a name="forgot_password"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.forgot_password") forgot_password

> Forgot password


```ruby
def forgot_password(username); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| username |  ``` Required ```  | Username belonging to account |


#### Example Usage

```ruby
username = 'username'

result = account_controller.forgot_password(username)

```


### <a name="verify_forgot_password"></a>![Method: ](https://apidocs.io/img/method.png ".AccountController.verify_forgot_password") verify_forgot_password

> Verify forgot password


```ruby
def verify_forgot_password(verify_password); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| verify_password |  ``` Required ```  | verifyPassword data |


#### Example Usage

```ruby
verify_password = AccountForgotPasswordVerify.new

result = account_controller.verify_forgot_password(verify_password)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="subaccount_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SubaccountController") SubaccountController

### Get singleton instance

The singleton instance of the ``` SubaccountController ``` class can be accessed from the API Client.

```ruby
subaccount_controller = client.subaccount
```

### <a name="get_subaccounts"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.get_subaccounts") get_subaccounts

> Get all subaccounts


```ruby
def get_subaccounts; end
```

#### Example Usage

```ruby

result = subaccount_controller.get_subaccounts()

```


### <a name="create_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.create_subaccount") create_subaccount

> Create new subaccount


```ruby
def create_subaccount(subaccount); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount |  ``` Required ```  | Subaccount model |


#### Example Usage

```ruby
subaccount = Subaccount.new

result = subaccount_controller.create_subaccount(subaccount)

```


### <a name="get_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.get_subaccount") get_subaccount

> Get specific subaccount


```ruby
def get_subaccount(subaccount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | ID of subaccount to get |


#### Example Usage

```ruby
subaccount_id = 177

result = subaccount_controller.get_subaccount(subaccount_id)

```


### <a name="delete_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.delete_subaccount") delete_subaccount

> Delete a subaccount


```ruby
def delete_subaccount(subaccount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | ID of subaccount to delete |


#### Example Usage

```ruby
subaccount_id = 177

result = subaccount_controller.delete_subaccount(subaccount_id)

```


### <a name="regenerate_api_key"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.regenerate_api_key") regenerate_api_key

> Regenerate an API Key


```ruby
def regenerate_api_key(subaccount_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | ID of subaccount to regenerate API key for |


#### Example Usage

```ruby
subaccount_id = 177

result = subaccount_controller.regenerate_api_key(subaccount_id)

```


### <a name="update_subaccount"></a>![Method: ](https://apidocs.io/img/method.png ".SubaccountController.update_subaccount") update_subaccount

> Update subaccount


```ruby
def update_subaccount(subaccount_id,
                          subaccount); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| subaccount_id |  ``` Required ```  | ID of subaccount to update |
| subaccount |  ``` Required ```  | Subaccount model |


#### Example Usage

```ruby
subaccount_id = 177
subaccount = Subaccount.new

result = subaccount_controller.update_subaccount(subaccount_id, subaccount)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="contact_list_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ContactListController") ContactListController

### Get singleton instance

The singleton instance of the ``` ContactListController ``` class can be accessed from the API Client.

```ruby
contactList_controller = client.contact_list
```

### <a name="get_contact_lists"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.get_contact_lists") get_contact_lists

> Get all contact lists


```ruby
def get_contact_lists; end
```

#### Example Usage

```ruby

result = contactList_controller.get_contact_lists()

```


### <a name="create_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.create_contact_list") create_contact_list

> Create new contact list


```ruby
def create_contact_list(list_name); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_name |  ``` Required ```  | Your contact list name |


#### Example Usage

```ruby
list_name = 'list_name'

result = contactList_controller.create_contact_list(list_name)

```


### <a name="get_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.get_contact_list") get_contact_list

> Get specific contact list


```ruby
def get_contact_list(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | List ID |


#### Example Usage

```ruby
list_id = 177

result = contactList_controller.get_contact_list(list_id)

```


### <a name="delete_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.delete_contact_list") delete_contact_list

> Delete a specific contact list


```ruby
def delete_contact_list(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | List ID |


#### Example Usage

```ruby
list_id = 177

result = contactList_controller.delete_contact_list(list_id)

```


### <a name="remove_duplicate_contacts"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.remove_duplicate_contacts") remove_duplicate_contacts

> Remove duplicate contacts


```ruby
def remove_duplicate_contacts(list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |


#### Example Usage

```ruby
list_id = 177

result = contactList_controller.remove_duplicate_contacts(list_id)

```


### <a name="update_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.update_contact_list") update_contact_list

> Update specific contact list


```ruby
def update_contact_list(list_id,
                            list_name); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |
| list_name |  ``` Required ```  | Your new list name |


#### Example Usage

```ruby
list_id = 177
list_name = 'list_name'

result = contactList_controller.update_contact_list(list_id, list_name)

```


### <a name="import_contacts_to_list"></a>![Method: ](https://apidocs.io/img/method.png ".ContactListController.import_contacts_to_list") import_contacts_to_list

> Import contacts to list


```ruby
def import_contacts_to_list(list_id,
                                file); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your contact list id you want to access. |
| file |  ``` Required ```  | ContactListImport model |


#### Example Usage

```ruby
list_id = 177
file = ContactListImport.new

result = contactList_controller.import_contacts_to_list(list_id, file)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="contact_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ContactController") ContactController

### Get singleton instance

The singleton instance of the ``` ContactController ``` class can be accessed from the API Client.

```ruby
contact_controller = client.contact
```

### <a name="create_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.create_contact") create_contact

> Create new contact


```ruby
def create_contact(contact,
                       list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| contact |  ``` Required ```  | Contact model |
| list_id |  ``` Required ```  | List id |


#### Example Usage

```ruby
contact = Contact.new
list_id = 177

result = contact_controller.create_contact(contact, list_id)

```


### <a name="get_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.get_contact") get_contact

> Get a specific contact


```ruby
def get_contact(list_id,
                    contact_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your contact list id you want to access. |
| contact_id |  ``` Required ```  | Your contact id you want to access. |


#### Example Usage

```ruby
list_id = 177
contact_id = 177

result = contact_controller.get_contact(list_id, contact_id)

```


### <a name="update_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.update_contact") update_contact

> Update contact


```ruby
def update_contact(list_id,
                       contact_id,
                       contact); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Contact list id |
| contact_id |  ``` Required ```  | Contact ID |
| contact |  ``` Required ```  | Contact model |


#### Example Usage

```ruby
list_id = 177
contact_id = 177
contact = Contact.new

result = contact_controller.update_contact(list_id, contact_id, contact)

```


### <a name="remove_opted_out_contacts"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.remove_opted_out_contacts") remove_opted_out_contacts

> Remove all opted out contacts


```ruby
def remove_opted_out_contacts(list_id,
                                  opt_out_list_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Your list id |
| opt_out_list_id |  ``` Required ```  | Your opt out list id |


#### Example Usage

```ruby
list_id = 177
opt_out_list_id = 177

result = contact_controller.remove_opted_out_contacts(list_id, opt_out_list_id)

```


### <a name="delete_contact"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.delete_contact") delete_contact

> Delete a contact


```ruby
def delete_contact(list_id,
                       contact_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | List ID |
| contact_id |  ``` Required ```  | Contact ID |


#### Example Usage

```ruby
list_id = 177
contact_id = 177

result = contact_controller.delete_contact(list_id, contact_id)

```


### <a name="get_contacts"></a>![Method: ](https://apidocs.io/img/method.png ".ContactController.get_contacts") get_contacts

> Get all contacts in a list


```ruby
def get_contacts(list_id,
                     page_num = 1); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| list_id |  ``` Required ```  | Contact list ID |
| page_num |  ``` Optional ```  ``` DefaultValue ```  | Page number |


#### Example Usage

```ruby
list_id = 177
page_num = 1

result = contact_controller.get_contacts(list_id, page_num)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="number_controller"></a>![Class: ](https://apidocs.io/img/class.png ".NumberController") NumberController

### Get singleton instance

The singleton instance of the ``` NumberController ``` class can be accessed from the API Client.

```ruby
number_controller = client.number
```

### <a name="get_dedicated_numbers"></a>![Method: ](https://apidocs.io/img/method.png ".NumberController.get_dedicated_numbers") get_dedicated_numbers

> Get all dedicated numbers


```ruby
def get_dedicated_numbers; end
```

#### Example Usage

```ruby

result = number_controller.get_dedicated_numbers()

```


### <a name="purchase_dedicated_number"></a>![Method: ](https://apidocs.io/img/method.png ".NumberController.purchase_dedicated_number") purchase_dedicated_number

> Buy dedicated number


```ruby
def purchase_dedicated_number(dedicated_number); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| dedicated_number |  ``` Required ```  | Phone number to purchase |


#### Example Usage

```ruby
dedicated_number = 'dedicated_number'

result = number_controller.purchase_dedicated_number(dedicated_number)

```


### <a name="get_dedicated_numbers_by_country"></a>![Method: ](https://apidocs.io/img/method.png ".NumberController.get_dedicated_numbers_by_country") get_dedicated_numbers_by_country

> Get all dedicated numbers by country


```ruby
def get_dedicated_numbers_by_country(country,
                                         search = nil,
                                         search_type = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Required ```  | Country code to search |
| search |  ``` Optional ```  | Your search pattern or query. |
| search_type |  ``` Optional ```  | Your strategy for searching, 0 = starts with, 1 = anywhere, 2 = ends with. |


#### Example Usage

```ruby
country = 'country'
search = 'search'
search_type = 177

result = number_controller.get_dedicated_numbers_by_country(country, search, search_type)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="statistics_controller"></a>![Class: ](https://apidocs.io/img/class.png ".StatisticsController") StatisticsController

### Get singleton instance

The singleton instance of the ``` StatisticsController ``` class can be accessed from the API Client.

```ruby
statistics_controller = client.statistics
```

### <a name="get_voice_statistics"></a>![Method: ](https://apidocs.io/img/method.png ".StatisticsController.get_voice_statistics") get_voice_statistics

> Get voice statistics


```ruby
def get_voice_statistics; end
```

#### Example Usage

```ruby

result = statistics_controller.get_voice_statistics()

```


### <a name="get_sms_statistics"></a>![Method: ](https://apidocs.io/img/method.png ".StatisticsController.get_sms_statistics") get_sms_statistics

> Get sms statistics


```ruby
def get_sms_statistics; end
```

#### Example Usage

```ruby

result = statistics_controller.get_sms_statistics()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="email_to_sms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".EmailToSmsController") EmailToSmsController

### Get singleton instance

The singleton instance of the ``` EmailToSmsController ``` class can be accessed from the API Client.

```ruby
emailToSms_controller = client.email_to_sms
```

### <a name="create_allowed_address"></a>![Method: ](https://apidocs.io/img/method.png ".EmailToSmsController.create_allowed_address") create_allowed_address

> Create email to sms allowed address


```ruby
def create_allowed_address(email_sms_address); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| email_sms_address |  ``` Required ```  | EmailSMSAddress model |


#### Example Usage

```ruby
email_sms_address = EmailSMSAddress.new

result = emailToSms_controller.create_allowed_address(email_sms_address)

```


### <a name="get_allowed_address"></a>![Method: ](https://apidocs.io/img/method.png ".EmailToSmsController.get_allowed_address") get_allowed_address

> Get list of email to sms allowed addresses


```ruby
def get_allowed_address; end
```

#### Example Usage

```ruby

result = emailToSms_controller.get_allowed_address()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="search_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SearchController") SearchController

### Get singleton instance

The singleton instance of the ``` SearchController ``` class can be accessed from the API Client.

```ruby
search_controller = client.search
```

### <a name="search_contact_list"></a>![Method: ](https://apidocs.io/img/method.png ".SearchController.search_contact_list") search_contact_list

> Get list of searched contact list


```ruby
def search_contact_list(q); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| q |  ``` Required ```  | Your keyword or query. |


#### Example Usage

```ruby
q = 'q'

result = search_controller.search_contact_list(q)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="referral_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ReferralAccountController") ReferralAccountController

### Get singleton instance

The singleton instance of the ``` ReferralAccountController ``` class can be accessed from the API Client.

```ruby
referralAccount_controller = client.referral_account
```

### <a name="get_referral_accounts"></a>![Method: ](https://apidocs.io/img/method.png ".ReferralAccountController.get_referral_accounts") get_referral_accounts

> Get all referral accounts


```ruby
def get_referral_accounts; end
```

#### Example Usage

```ruby

result = referralAccount_controller.get_referral_accounts()

```


[Back to List of Controllers](#list_of_controllers)

## <a name="reseller_account_controller"></a>![Class: ](https://apidocs.io/img/class.png ".ResellerAccountController") ResellerAccountController

### Get singleton instance

The singleton instance of the ``` ResellerAccountController ``` class can be accessed from the API Client.

```ruby
resellerAccount_controller = client.reseller_account
```

### <a name="get_reseller_accounts"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.get_reseller_accounts") get_reseller_accounts

> Get list of reseller accounts


```ruby
def get_reseller_accounts; end
```

#### Example Usage

```ruby

result = resellerAccount_controller.get_reseller_accounts()

```


### <a name="create_reseller_account"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.create_reseller_account") create_reseller_account

> Create reseller account


```ruby
def create_reseller_account(reseller_account); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| reseller_account |  ``` Required ```  | ResellerAccount model |


#### Example Usage

```ruby
reseller_account = ResellerAccount.new

result = resellerAccount_controller.create_reseller_account(reseller_account)

```


### <a name="get_reseller_account"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.get_reseller_account") get_reseller_account

> Get Reseller Account


```ruby
def get_reseller_account(client_user_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| client_user_id |  ``` Required ```  | User ID of client |


#### Example Usage

```ruby
client_user_id = 177

result = resellerAccount_controller.get_reseller_account(client_user_id)

```


### <a name="update_reseller_account"></a>![Method: ](https://apidocs.io/img/method.png ".ResellerAccountController.update_reseller_account") update_reseller_account

> Reseller Account


```ruby
def update_reseller_account(client_user_id,
                                reseller_account); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| client_user_id |  ``` Required ```  | User ID of client |
| reseller_account |  ``` Required ```  | ResellerAccount model |


#### Example Usage

```ruby
client_user_id = 177
reseller_account = ResellerAccount.new

result = resellerAccount_controller.update_reseller_account(client_user_id, reseller_account)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="transfer_credit_controller"></a>![Class: ](https://apidocs.io/img/class.png ".TransferCreditController") TransferCreditController

### Get singleton instance

The singleton instance of the ``` TransferCreditController ``` class can be accessed from the API Client.

```ruby
transferCredit_controller = client.transfer_credit
```

### <a name="transfer_credit"></a>![Method: ](https://apidocs.io/img/method.png ".TransferCreditController.transfer_credit") transfer_credit

> Transfer Credit


```ruby
def transfer_credit(reseller_account_transfer_credit); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| reseller_account_transfer_credit |  ``` Required ```  | ResellerAccountTransferCredit model |


#### Example Usage

```ruby
reseller_account_transfer_credit = ResellerAccountTransferCredit.new

result = transferCredit_controller.transfer_credit(reseller_account_transfer_credit)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="account_recharge_controller"></a>![Class: ](https://apidocs.io/img/class.png ".AccountRechargeController") AccountRechargeController

### Get singleton instance

The singleton instance of the ``` AccountRechargeController ``` class can be accessed from the API Client.

```ruby
accountRecharge_controller = client.account_recharge
```

### <a name="get_credit_card_info"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_credit_card_info") get_credit_card_info

> Get Credit Card info


```ruby
def get_credit_card_info; end
```

#### Example Usage

```ruby

result = accountRecharge_controller.get_credit_card_info()

```


### <a name="update_credit_card_info"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.update_credit_card_info") update_credit_card_info

> Update credit card info


```ruby
def update_credit_card_info(credit_card); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| credit_card |  ``` Required ```  | CreditCard model |


#### Example Usage

```ruby
credit_card = CreditCard.new

result = accountRecharge_controller.update_credit_card_info(credit_card)

```


### <a name="get_packages_list"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_packages_list") get_packages_list

> Get list of all packages


```ruby
def get_packages_list(country = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Optional ```  | Country code |


#### Example Usage

```ruby
country = 'country'

result = accountRecharge_controller.get_packages_list(country)

```


### <a name="purchase_package"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.purchase_package") purchase_package

> Purchase a package


```ruby
def purchase_package(package_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| package_id |  ``` Required ```  | ID of package to purchase |


#### Example Usage

```ruby
package_id = 177

result = accountRecharge_controller.purchase_package(package_id)

```


### <a name="get_transactions"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_transactions") get_transactions

> Get all transactions


```ruby
def get_transactions; end
```

#### Example Usage

```ruby

result = accountRecharge_controller.get_transactions()

```


### <a name="get_transaction"></a>![Method: ](https://apidocs.io/img/method.png ".AccountRechargeController.get_transaction") get_transaction

> Get specific Transaction


```ruby
def get_transaction(transaction_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| transaction_id |  ``` Required ```  | ID of transaction to retrieve |


#### Example Usage

```ruby
transaction_id = 'transaction_id'

result = accountRecharge_controller.get_transaction(transaction_id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="sms_campaign_controller"></a>![Class: ](https://apidocs.io/img/class.png ".SmsCampaignController") SmsCampaignController

### Get singleton instance

The singleton instance of the ``` SmsCampaignController ``` class can be accessed from the API Client.

```ruby
smsCampaign_controller = client.sms_campaign
```

### <a name="create_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.create_sms_campaign") create_sms_campaign

> Create sms campaign


```ruby
def create_sms_campaign(campaign); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| campaign |  ``` Required ```  | SmsCampaign model |


#### Example Usage

```ruby
campaign = SmsCampaign.new

result = smsCampaign_controller.create_sms_campaign(campaign)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.calculate_price") calculate_price

> Calculate price for sms campaign


```ruby
def calculate_price(campaign); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| campaign |  ``` Required ```  | SmsCampaign model |


#### Example Usage

```ruby
campaign = SmsCampaign.new

result = smsCampaign_controller.calculate_price(campaign)

```


### <a name="update_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.update_sms_campaign") update_sms_campaign

> Update sms campaign


```ruby
def update_sms_campaign(sms_campaign_id,
                            campaign); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_campaign_id |  ``` Required ```  | ID of SMS campaign to update |
| campaign |  ``` Required ```  | SmsCampaign model |


#### Example Usage

```ruby
sms_campaign_id = 177
campaign = SmsCampaign.new

result = smsCampaign_controller.update_sms_campaign(sms_campaign_id, campaign)

```


### <a name="cancel_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.cancel_sms_campaign") cancel_sms_campaign

> Cancel sms campaign


```ruby
def cancel_sms_campaign(sms_campaign_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_campaign_id |  ``` Required ```  | ID of SMS Campaign to cancel |


#### Example Usage

```ruby
sms_campaign_id = 177

result = smsCampaign_controller.cancel_sms_campaign(sms_campaign_id)

```


### <a name="get_sms_campaigns"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.get_sms_campaigns") get_sms_campaigns

> Get list of sms campaigns


```ruby
def get_sms_campaigns; end
```

#### Example Usage

```ruby

result = smsCampaign_controller.get_sms_campaigns()

```


### <a name="get_sms_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".SmsCampaignController.get_sms_campaign") get_sms_campaign

> Get specific sms campaign


```ruby
def get_sms_campaign(sms_campaign_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| sms_campaign_id |  ``` Required ```  | ID of SMS campaign to retrieve |


#### Example Usage

```ruby
sms_campaign_id = 177

result = smsCampaign_controller.get_sms_campaign(sms_campaign_id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_letter_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostLetterController") PostLetterController

### Get singleton instance

The singleton instance of the ``` PostLetterController ``` class can be accessed from the API Client.

```ruby
postLetter_controller = client.post_letter
```

### <a name="send_post_letter"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.send_post_letter") send_post_letter

> Send post letter


```ruby
def send_post_letter(post_letter); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| post_letter |  ``` Required ```  | PostLetter model |


#### Example Usage

```ruby
post_letter = PostLetter.new

result = postLetter_controller.send_post_letter(post_letter)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.calculate_price") calculate_price

> Calculate post letter price


```ruby
def calculate_price(post_letter); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| post_letter |  ``` Required ```  | PostLetter model |


#### Example Usage

```ruby
post_letter = PostLetter.new

result = postLetter_controller.calculate_price(post_letter)

```


### <a name="get_post_letter_history"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.get_post_letter_history") get_post_letter_history

> Get all post letter history


```ruby
def get_post_letter_history; end
```

#### Example Usage

```ruby

result = postLetter_controller.get_post_letter_history()

```


### <a name="export_post_letter_history"></a>![Method: ](https://apidocs.io/img/method.png ".PostLetterController.export_post_letter_history") export_post_letter_history

> export post letter history


```ruby
def export_post_letter_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | Filename to export to |


#### Example Usage

```ruby
filename = 'filename'

result = postLetter_controller.export_post_letter_history(filename)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_return_address_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostReturnAddressController") PostReturnAddressController

### Get singleton instance

The singleton instance of the ``` PostReturnAddressController ``` class can be accessed from the API Client.

```ruby
postReturnAddress_controller = client.post_return_address
```

### <a name="create_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.create_post_return_address") create_post_return_address

> Create post return address


```ruby
def create_post_return_address(return_address); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address |  ``` Required ```  | Address model |


#### Example Usage

```ruby
return_address = Address.new

result = postReturnAddress_controller.create_post_return_address(return_address)

```


### <a name="get_post_return_addresses"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.get_post_return_addresses") get_post_return_addresses

> Get list of post return addresses


```ruby
def get_post_return_addresses; end
```

#### Example Usage

```ruby

result = postReturnAddress_controller.get_post_return_addresses()

```


### <a name="get_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.get_post_return_address") get_post_return_address

> Get specific post return address


```ruby
def get_post_return_address(return_address_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address_id |  ``` Required ```  | Return address ID |


#### Example Usage

```ruby
return_address_id = 136

result = postReturnAddress_controller.get_post_return_address(return_address_id)

```


### <a name="update_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.update_post_return_address") update_post_return_address

> Update post return address


```ruby
def update_post_return_address(return_address_id,
                                   return_address); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address_id |  ``` Required ```  | Return address ID |
| return_address |  ``` Required ```  | Address model |


#### Example Usage

```ruby
return_address_id = 136
return_address = Address.new

result = postReturnAddress_controller.update_post_return_address(return_address_id, return_address)

```


### <a name="delete_post_return_address"></a>![Method: ](https://apidocs.io/img/method.png ".PostReturnAddressController.delete_post_return_address") delete_post_return_address

> Delete specific post return address


```ruby
def delete_post_return_address(return_address_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| return_address_id |  ``` Required ```  | Return address ID |


#### Example Usage

```ruby
return_address_id = 136

result = postReturnAddress_controller.delete_post_return_address(return_address_id)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="fax_controller"></a>![Class: ](https://apidocs.io/img/class.png ".FaxController") FaxController

### Get singleton instance

The singleton instance of the ``` FaxController ``` class can be accessed from the API Client.

```ruby
fax_controller = client.fax
```

### <a name="fax_receipt_list"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.fax_receipt_list") fax_receipt_list

> Get List of Fax Receipts


```ruby
def fax_receipt_list; end
```

#### Example Usage

```ruby

result = fax_controller.fax_receipt_list()

```


### <a name="get_fax_receipt"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.get_fax_receipt") get_fax_receipt

> Get a single fax receipt based on message id.


```ruby
def get_fax_receipt(message_id); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| message_id |  ``` Required ```  | ID of the message receipt to retrieve |


#### Example Usage

```ruby
message_id = 'message_id'

result = fax_controller.get_fax_receipt(message_id)

```


### <a name="get_fax_history"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.get_fax_history") get_fax_history

> Get a list of Fax History.


```ruby
def get_fax_history(date_from = nil,
                        date_to = nil,
                        q = nil,
                        order = nil); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| date_from |  ``` Optional ```  | Customize result by setting from date (timestsamp) Example: 1457572619. |
| date_to |  ``` Optional ```  | Customize result by setting to date (timestamp) Example: 1457573000. |
| q |  ``` Optional ```  | Custom query Example: status:Sent,status_code:201. |
| order |  ``` Optional ```  | Order result by Example: date_added:desc,list_id:desc. |


#### Example Usage

```ruby
date_from = 136
date_to = 136
q = 'q'
order = 'order'

result = fax_controller.get_fax_history(date_from, date_to, q, order)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.calculate_price") calculate_price

> Calculate Total Price for Fax Messages sent


```ruby
def calculate_price(fax_message); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fax_message |  ``` Required ```  | FaxMessageCollection model |


#### Example Usage

```ruby
fax_message = FaxMessageCollection.new

result = fax_controller.calculate_price(fax_message)

```


### <a name="send_fax"></a>![Method: ](https://apidocs.io/img/method.png ".FaxController.send_fax") send_fax

> Send a fax using supplied supported file-types.


```ruby
def send_fax(fax_message); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| fax_message |  ``` Required ```  | FaxMessageCollection model |


#### Example Usage

```ruby
fax_message = FaxMessageCollection.new

result = fax_controller.send_fax(fax_message)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="mms_controller"></a>![Class: ](https://apidocs.io/img/class.png ".MMSController") MMSController

### Get singleton instance

The singleton instance of the ``` MMSController ``` class can be accessed from the API Client.

```ruby
mMS_controller = client.mms
```

### <a name="send_mms"></a>![Method: ](https://apidocs.io/img/method.png ".MMSController.send_mms") send_mms

> TODO: Add a method description


```ruby
def send_mms(mms_messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mms_messages |  ``` Required ```  | MmsMessageCollection model |


#### Example Usage

```ruby
mms_messages = MmsMessageCollection.new

result = mMS_controller.send_mms(mms_messages)

```


### <a name="get_price"></a>![Method: ](https://apidocs.io/img/method.png ".MMSController.get_price") get_price

> Get Price for MMS sent


```ruby
def get_price(mms_messages); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| mms_messages |  ``` Required ```  | MmsMessageCollection model |


#### Example Usage

```ruby
mms_messages = MmsMessageCollection.new

result = mMS_controller.get_price(mms_messages)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_postcard_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostPostcardController") PostPostcardController

### Get singleton instance

The singleton instance of the ``` PostPostcardController ``` class can be accessed from the API Client.

```ruby
postPostcard_controller = client.post_postcard
```

### <a name="send_postcard"></a>![Method: ](https://apidocs.io/img/method.png ".PostPostcardController.send_postcard") send_postcard

> Send one or more postcards


```ruby
def send_postcard(post_postcards); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| post_postcards |  ``` Required ```  | PostPostcard model |


#### Example Usage

```ruby
post_postcards = PostPostcard.new

result = postPostcard_controller.send_postcard(post_postcards)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".PostPostcardController.calculate_price") calculate_price

> Calculate price for sending one or more postcards


```ruby
def calculate_price(post_postcards); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| post_postcards |  ``` Required ```  | PostPostcard model |


#### Example Usage

```ruby
post_postcards = PostPostcard.new

result = postPostcard_controller.calculate_price(post_postcards)

```


### <a name="get_postcard_history"></a>![Method: ](https://apidocs.io/img/method.png ".PostPostcardController.get_postcard_history") get_postcard_history

> Retrieve the history of postcards sent or scheduled


```ruby
def get_postcard_history; end
```

#### Example Usage

```ruby

result = postPostcard_controller.get_postcard_history()

```


### <a name="export_postcard_history"></a>![Method: ](https://apidocs.io/img/method.png ".PostPostcardController.export_postcard_history") export_postcard_history

> Export postcard history to a CSV file


```ruby
def export_postcard_history(filename); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| filename |  ``` Required ```  | Filename to export to |


#### Example Usage

```ruby
filename = 'filename'

result = postPostcard_controller.export_postcard_history(filename)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="upload_controller"></a>![Class: ](https://apidocs.io/img/class.png ".UploadController") UploadController

### Get singleton instance

The singleton instance of the ``` UploadController ``` class can be accessed from the API Client.

```ruby
upload_controller = client.upload
```

### <a name="upload_file"></a>![Method: ](https://apidocs.io/img/method.png ".UploadController.upload_file") upload_file

> Upload a file


```ruby
def upload_file(file,
                    convert); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| file |  ``` Required ```  | The file to be uploaded |
| convert |  ``` Required ```  | The product that this file will be used with e.g. 'fax', 'mms', 'csv' or 'post' |


#### Example Usage

```ruby
file = Faraday::UploadIO.new('PathToFile', 'application/octet-stream')
convert = 'convert'

result = upload_controller.upload_file(file, convert)

```


### <a name="upload_file1"></a>![Method: ](https://apidocs.io/img/method.png ".UploadController.upload_file1") upload_file1

> TODO: Add a method description


```ruby
def upload_file1(content,
                     convert); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| content |  ``` Required ```  | Base64-encoded file contents |
| convert |  ``` Required ```  | The product that this file will be used with e.g. 'fax', 'mms', 'csv' or 'post' |


#### Example Usage

```ruby
content = FileContent.new
convert = 'convert'

result = upload_controller.upload_file1(content, convert)

```


[Back to List of Controllers](#list_of_controllers)

## <a name="post_direct_mail_controller"></a>![Class: ](https://apidocs.io/img/class.png ".PostDirectMailController") PostDirectMailController

### Get singleton instance

The singleton instance of the ``` PostDirectMailController ``` class can be accessed from the API Client.

```ruby
postDirectMail_controller = client.post_direct_mail
```

### <a name="location_search"></a>![Method: ](https://apidocs.io/img/method.png ".PostDirectMailController.location_search") location_search

> Search for a location


```ruby
def location_search(country,
                        q); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| country |  ``` Required ```  | Country Code to search |
| q |  ``` Required ```  | Search term (e.g. post code, city name) |


#### Example Usage

```ruby
country = 'country'
q = 'q'

result = postDirectMail_controller.location_search(country, q)

```


### <a name="send_campaign"></a>![Method: ](https://apidocs.io/img/method.png ".PostDirectMailController.send_campaign") send_campaign

> TODO: Add a method description


```ruby
def send_campaign(post_direct_mail); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| post_direct_mail |  ``` Required ```  | PostDirectMail model |


#### Example Usage

```ruby
post_direct_mail = PostDirectMail.new

result = postDirectMail_controller.send_campaign(post_direct_mail)

```


### <a name="calculate_price"></a>![Method: ](https://apidocs.io/img/method.png ".PostDirectMailController.calculate_price") calculate_price

> Calculate direct mail campaign price


```ruby
def calculate_price(post_direct_mail); end
```

#### Parameters

| Parameter | Tags | Description |
|-----------|------|-------------|
| post_direct_mail |  ``` Required ```  | PostDirectMail model |


#### Example Usage

```ruby
post_direct_mail = PostDirectMail.new

result = postDirectMail_controller.calculate_price(post_direct_mail)

```


### <a name="campaigns"></a>![Method: ](https://apidocs.io/img/method.png ".PostDirectMailController.campaigns") campaigns

> Get direct mail campaigns


```ruby
def campaigns; end
```

#### Example Usage

```ruby

result = postDirectMail_controller.campaigns()

```


[Back to List of Controllers](#list_of_controllers)




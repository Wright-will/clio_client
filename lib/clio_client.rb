require 'net/http'
require 'json'

module ClioClient
  { :Session,       'session',
    :Base,          'base',
    :Resource,      'resource',
    :Http,          'http',
    :Authorization, 'authorization'
  }.each_pair do |klass, file| 
    autoload klass, "clio_client/#{file}"
  end

  # Models
  {
  :Activity,            'activity',
  :ActivityDescription, 'activity_description',
  :Bill,                'bill',
  :CalendarEntry,       'calendar_entry',
  :Calendar,            'calendar',
  :Communication,       'communication',
  :Company,             'company',
  :Contact,             'contact',
  :CustomFieldSet,      'custom_field_set',
  :CustomField,         'custom_field',
  :ExpenseEntry,        'expense_entry',
  :EmailCommunication,  'email_communication',
  :Matter,              'matter',
  :Person,              'person',
  :PhoneCommunication,  'phone_communication',
  :TimeEntry,           'time_entry',
  :User,                'user'
  }.each_pair do |klass, file| 
    autoload klass, "clio_client/models/#{file}"
  end

  {
    :PhoneNumber,              'phone_number',
    :EmailAddress,             'email_address',
    :Address,                  'address',
    :WebSite,                  'web_site',
    :InstantMessenger,         'instant_messenger',
    :CustomFieldValue,         'custom_field_value',
    :CustomFieldCheckboxValue, 'custom_field_checkbox_value',
    :CustomFieldContactValue,  'custom_field_contact_value',
    :CustomFieldCurrencyValue, 'custom_field_currency_value',
    :CustomFieldDateValue,     'custom_field_date_value',
    :CustomFieldTimeValue,     'custom_field_time_value',
    :CustomFieldEmailValue,    'custom_field_email_value',
    :CustomFieldMatterValue,   'custom_field_matter_value',
    :CustomFieldNumericValue,  'custom_field_numeric_value',
    :CustomFieldPicklistValue, 'custom_field_picklist_value',
    :CustomFieldPicklistOption,'custom_field_picklist_option',
    :CustomFieldTextAreaValue, 'custom_field_text_area_value',
    :CustomFieldTextLineValue, 'custom_field_text_line_value',
    :CustomFieldUrlValue,      'custom_field_url_value',
    :Rate,                     'rate',
    :Reminder,                 'reminder'
  }.each_pair do |klass, file| 
    autoload klass, "clio_client/support/#{file}"
  end

  module Api
    {
     :Base,              'base',
     :Activity,           'activity',
     :ActivityDescription,'activity_description',
     :Bill,               'bill',
     :CalendarEntry,      'calendar_entry',
     :Calendar,           'calendar',
     :Communication,      'communication'
     :Contact,            'contact',
     :CustomFieldSet,     'custom_field_set',    
     :CustomField,        'custom_field',

     :Crudable,          'crudable',
     :Findable,          'findable',
     :Listable,          'listable',
    }.each_pair do |klass, file| 
    autoload klass, "clio_client/api/#{file}"
  end

  end

end

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Blog::Application.initialize!

require 'amazon/ecs'
Amazon::Ecs.debug = true
Amazon::Ecs.options = {
  :associate_tag =>     'wwc10a-20',
  :AWS_access_key_id => 'AKIAJBCIOO5EWF6JKYIQ',
  :AWS_secret_key =>    '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',
  :country =>:us
}

# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Blog::Application.initialize!

require 'amazon/ecs'
Amazon::Ecs.debug = false
Amazon::Ecs.options = {
  :associate_tag =>     'XXX',
  :AWS_access_key_id => 'XXX',
  :AWS_secret_key =>    'XXX',
  :country =>:us,
}

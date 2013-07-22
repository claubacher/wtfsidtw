# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Wtfsidtw::Application.initialize!

GROUPON_URL = "http://api.groupon.com/v2/deals.json?client_id=69481c71e6487f01ac963838804ee201cd5efcc9"

GROUPON_PARENT_TAGS = ['Arts and Entertainment','Beauty & Spas','Education','Restaurants','Nightlife']

GROUPON_CHILD_TAGS = ['Golf', 'Martial Arts','Martial Arts','Racquetball Clubs','Rock Climbing  Health & Fitness
', 'Skiing', 'Tennis', 'Yoga']

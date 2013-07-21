# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Wtfsidtw::Application.initialize!
GROUPON_KEY = ENV['GROUPON_KEY']

GROUPON_URL = "http://api.groupon.com/v2/deals.json?client_id="+GROUPON_KEY

GROUPON_PARENT_TAGS = ['Arts_and_Entertainment','Beauty_&_Spas','Education','Restaurants','Nightlife']

GROUPON_CHILD_TAGS = ['Golf', 'Martial_Arts','Martial_Arts','Racquetball_Clubs','Rock_Climbing  Health & Fitness
', 'Skiing', 'Tennis', 'Yoga']

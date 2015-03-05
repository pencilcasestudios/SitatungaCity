# Top-level High Voltage routes
# Ref: https://github.com/thoughtbot/high_voltage#top-level-routes
HighVoltage.configure do |config|
	config.home_page = 'home'
	config.route_drawer = HighVoltage::RouteDrawers::Root
end

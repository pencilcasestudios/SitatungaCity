# Application configuration wish Settingslogic
# Ref: https://github.com/settingslogic/settingslogic#usage
class AppConfig < Settingslogic
  source "#{Rails.root}/config/config.yml"
  namespace Rails.env
end

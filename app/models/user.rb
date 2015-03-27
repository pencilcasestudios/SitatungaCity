class User < ActiveRecord::Base
	has_secure_password

	has_many :plots

  attr_accessor :terms_of_use

  ROLES = {
    # Translation                                   # Database key
    I18n.t("models.user.roles.user")          =>    "user",
    I18n.t("models.user.roles.administrator") =>    "administrator",
  }

  def full_name
    [self.first_name, self.middle_name, self.last_name].compact.reject{|element| element.empty?}.join(" ")
  end

  def admin?
    self.role == ROLES[I18n.t("models.user.roles.administrator")]
  end

  def promote
    self.role = ROLES[I18n.t("models.user.roles.administrator")]
  end

  def demote
    self.role = ROLES[I18n.t("models.user.roles.user")]
  end

  def self.random_role
    ROLES[ROLES.to_a[rand ROLES.size].first]
  end
end

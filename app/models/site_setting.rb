class SiteSetting < ActiveRecord::Base
  include CssSanitize

  def get_theme_setting
    theme_setting = self.send(:user_theme_name)
    theme_setting.blank? ? 'default' : theme_setting
  end
end

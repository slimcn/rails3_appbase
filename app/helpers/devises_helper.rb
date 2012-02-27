module DevisesHelper
  def i18n_viewer key
    I18n.t("devise.viewer.#{key}")
  rescue
    key.to_s
  end
end

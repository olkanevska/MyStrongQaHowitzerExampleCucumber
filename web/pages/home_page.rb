require_relative 'base_page'
class HomePage < BasePage
  path '/'
  validate :title, /\AZero - Personal Banking - Loans - Credit Cards\z/
  section :main_menu

end

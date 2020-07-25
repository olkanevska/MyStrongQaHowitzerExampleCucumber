require_relative 'base_page'
class AccountSummaryPage < BasePage
  path '/bank/account-summary.html'
  validate :title, /\AZero - Account Summary\z/
  section :main_menu

  element :account,   ".dropdown-toggle"

  def user_name_icon
      account_elements.last.text
  end

end
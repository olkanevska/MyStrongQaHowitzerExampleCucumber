class LoginPage < Howitzer::Web::Page
  path '/users/sign-in'
  validate :title, /\ALogin in to StrongQA | StrongQA\z/
  validate :url, %r{/sign-in/?\z}
  section :main_menu

  element :link, :link, ->(name) { name.to_s }

  def navigate_to_link(text)
    Howitzer::Log.info "Navigate to #{text} page"
    link_element(text).click
  end
end

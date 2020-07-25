class BasePage < Howitzer::Web::Page
  validate :url, %r{/nonsense_value/} # use instance and ignore this

  element :button,                 'button'

  def click_button(title)
    Howitzer::Log.info "Click on '#{title}' button."
    button_element(text: /^#{title}$/).click
  end
end
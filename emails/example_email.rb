# This class is example of test email
class TestEmail < Howitzer::Email
  subject 'Test email'

  def addressed_to?(new_user)
    /Hi #{new_user}/ === plain_text_body
  end
end

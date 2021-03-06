#############################################################
#                      PREREQUISITES                        #
#############################################################

####################################
#              ACTIONS             #
####################################
When 'I submit sign up form on sign up page' do
  SignUpPage.on { submit_form }
end

When 'I fill form on sign up page with new data' do
  @user = build(:user)
  param = { user_name: @user.name,
            email: @user.email,
            password: @user.password.to_s,
            password_confirmation: @user.password_confirmation.to_s }
  SignUpPage.on do
    fill_form param
  end
end

When 'I fill form on sign up page with short password' do
  @user = build(:user)
  param = { user_name: @user.name,
            email: @user.email,
            password: @user.password.to_s[0..5],
            password_confirmation: @user.password_confirmation.to_s[0..5] }
  SignUpPage.on do
    fill_form(param)
  end
end

When 'I fill form on sign up page with different password data' do
  @user = build(:user)
  param = { user_name: @user.name,
            email: @user.email,
            password: @user.password.to_s,
            password_confirmation: @user.password_confirmation.to_s.concat(33) }
  SignUpPage.on do
    fill_form(param)
  end
end

####################################
#              CHECKS              #
####################################

When 'I fill form on sign up page with blank data' do
  param = {}
  SignUpPage.on { fill_form(param) }
end

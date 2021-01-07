def sign_up
  visit new_user_registration_path
  fill_in :user_email, :with => 'user@example.com'
  fill_in :user_username, :with => 'kot'
  fill_in :user_password, :with => '12345678'
  fill_in :user_password_confirmation, :with => '12345678'
  click_button 'Sign up'
end

class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.forgot_password.subject
  #
  def forgot_password
    @greeting = "Hi"
    mail to: "#{current_user.email}"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user_id)
    @email = User.find(user_id)
    @greeting = "Hi! Welcome to DataLus!"
    mail to: "#{@email}", subject: "Welcome To DataLus!"
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.getting_started.subject
  #
  def getting_started
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end

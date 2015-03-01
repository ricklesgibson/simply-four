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
  def welcome(user)
    #generate a welcome email when a user is generated
    @greeting = "Hi! Welcome to DataLus, #{user.first_name}!"
    #@greeting = "Hi! #{user.name}"

    mail to: "#{user.email}", subject: "Welcome To DataLus!"
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

class ApplicationMailer < ActionMailer::Base
  default from: "welcome@simply.me"
  layout 'mailer'
end

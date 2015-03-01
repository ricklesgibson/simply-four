class ApplicationMailer < ActionMailer::Base
  default from: "welcome@datalus.me"
  layout 'mailer'
end

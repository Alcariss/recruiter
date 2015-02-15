class Appmailer < ActionMailer::Base
  default from: "from@example.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.appmailer.register.subject
  #
  def register(user)
	if user
		@user = user
		mail(:to =>user.email, :subject => "Welcome to The Recruiter")
	end
  end
end

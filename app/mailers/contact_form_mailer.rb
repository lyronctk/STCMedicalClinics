class ContactFormMailer < ApplicationMailer
	default from: "lyronctk@gmail.com"

	def contact_form_email(recipient_email, subject, comment)
		@body = "Message: " + comment
		@email = "Email: " + recipient_email

		mail(
		  to:       "lyronctk@gmail.com",
		  subject:  subject,
		  reply_to: recipient_email,
		  tag:      "contact_form_tag")
	end
end

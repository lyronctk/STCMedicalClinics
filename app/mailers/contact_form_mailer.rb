class ContactFormMailer < ApplicationMailer
	default from: "contact@sharedroofinvestments.com"

	def contact_form_email(recipient_email, subject, comment)
		@body = "Message: " + comment
		@email = "Email: " + recipient_email

		mail(
		  to:       "contact@sharedroofinvestments.com",
		  subject:  subject,
		  reply_to: recipient_email,
		  tag:      "contact_form_tag")
	end
end

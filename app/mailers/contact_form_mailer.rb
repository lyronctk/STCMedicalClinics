class ContactFormMailer < ApplicationMailer
	default from: "info@stcmedicalclinics.com"

	def contact_form_email(recipient_email, subject, comment)
		@body = "Message: " + comment
		@email = "Email: " + recipient_email

		mail(
		  to:       "info@stcmedicalclinics.com",
		  subject:  subject,
		  reply_to: recipient_email,
		  tag:      "contact_form_tag")
	end
end

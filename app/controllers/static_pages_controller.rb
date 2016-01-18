class StaticPagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
  end

  def amenities
  end

  def hemodialysis
  end

  def contact
  end

  def rehabilitation
  end

  def info
  end

  def kidney
  end

  def forward_form_email
    ContactFormMailer.contact_form_email(params[:contact_email], params[:contact_subject], params[:contact_comment]).deliver_now
    respond_to do |format|
      format.html { redirect_to "/", notice: 'Email succesfully sent.' }
      format.json { head :no_content }
    end
  end
end
class StaticPagesController < ApplicationController
  skip_before_action :verify_authenticity_token

  def home
  end

  def invest
  end

  def fees
  end

  def team
  end

  def contact
  end

  def alternatives
  end

  def durham
  end

  def forward_form_email
    ContactFormMailer.contact_form_email(params[:contact_email], params[:contact_subject], params[:contact_comment]).deliver_now
    render "home"
  end
end
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

  def forward_form_email
  end
end
class MailsController < ApplicationController
  def index
  end

  def send_mail
    SampleMailer.send_mail_users
    redirect_to home_index_path
  end
end

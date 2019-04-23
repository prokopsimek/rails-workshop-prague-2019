# frozen_string_literal: true

class MyFirstNotifierMailer < ApplicationMailer
  default from: ENV['SMTP_USERNAME']

  def idea_created_notification
    mail(to: 'prsworkshop2019@gmail.com', subject: 'New idea added!')
  end
end

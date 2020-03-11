# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'mentormarket.rocks'
  layout 'mailer'
end

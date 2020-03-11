# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'hello@mentormarket.rocks'
  layout 'mailer'
end

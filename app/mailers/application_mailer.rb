# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'mentormatch.io'
  layout 'mailer'
end

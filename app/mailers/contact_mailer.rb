class ContactMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.new_contact.subject
  #
  def new_contact
    @greeting = "Hi"

    mail(to: "timboing@icloud.com", subject: 'This is a mailer')
  end
end

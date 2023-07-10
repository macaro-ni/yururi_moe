class ContactMailer < ApplicationMailer

  def send_mail(contact)
    @contact=contact
    mail(
      from: 'contact.email',
      to: ENV['ADMIN_MAIL_ADDRESS'],
      subject: 'お問合せ通知')
  end

end

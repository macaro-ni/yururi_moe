# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview
 def contact
   contact= Contact.new(name "あや", message: "問い合わせテストです。")
   
   InquiryMailer.send_mail(contact)
 end
end

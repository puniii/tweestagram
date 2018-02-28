class ContactMailer < ApplicationMailer
  def post_mail(post)
    @post = post
    @post_email = @post.user.email
    mail to: @post_email , subject: "【tweestagram】投稿を受付しました"
  end

  # def contact_mail(contact)
  #   @contact = contact
  #   @contact_email = @contact.email
  #   mail to: @contact_email , subject: "お問い合わせを受付しました"
  # end
end

class UserNotifierMailer < ApplicationMailer
  default :from => "shinya.numero1@gmail.com"

  def send_signup_email(user)
    @user = user
    mail( :to => @user.email, :subject => "会員登録が完了しました。" )
  end
end

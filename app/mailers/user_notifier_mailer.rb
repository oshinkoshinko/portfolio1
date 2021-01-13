class UserNotifierMailer < ApplicationMailer
  default :from => ENV['SECRET_ADDRESS']

    def send_signup_email(user)
        @user = user
        mail( :to => @user.email, :subject => "会員登録が完了しました。" )
    end

end

class SampleMailer < ApplicationMailer

    def send_mail(user)
        @user = user
        mail(subject: '確認メール',to: user.email, from: "test@example.com")
      end 
      
      def self.send_mail_users
        # @users = User.all
        # @users.each do |user|
        #   SampleMailer.send_mail(user).deliver_now
        # self.send_mail_usersで@users = User.allをしてそこからループで@users全員にメール配信

        # 86番目の人にデータを送る
        @user =User.find(86)  #ここにデータを宛先データを渡す
        SampleMailer.send_mail(@user).deliver_now  #渡されたアドレスに送信する
        # end 
      end 
      
end

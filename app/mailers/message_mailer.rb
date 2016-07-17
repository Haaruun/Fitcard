class MessageMailer < ApplicationMailer
		 default from: "haaruun.dhubat@outlook.com"
  default to: "dhubat.haaruun@gmail.com"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end
end

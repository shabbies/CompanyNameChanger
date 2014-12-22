class MessageController < ApplicationController
	def new
		content = message_params[:message]
		content.gsub!(message_params[:oldcompany], message_params[:newcompany])
		p "bye"
		p message_params
		message_params[:message] = content
		@message = Message.create(message_params)
	end

	def index
		
	end

	private

    def message_params
      params.require(:message).permit(:oldcompany, :newcompany, :message)
    end
end

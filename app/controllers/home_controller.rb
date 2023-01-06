class HomeController < ApplicationController
  layout 'application'

  def index
    @contact ||= ContactMessage.new
  end

  def send_message
    @contact = ContactMessage.new(contact_message_params)

    respond_to do |format|
      if @contact.save and ApplicationMailer.send_contact_email(@contact).deliver
        flash.now[:success] = 'Message sent!'
        format.html { redirect_to root_url(@contact, anchor: 'contact_div'), notice: "Message Sent." }
        format.json { render 'index', status: :ok, location: @contact }

      else
        format.html { render 'index', status: :unprocessable_entity, alert: @contact.errors.full_messages }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end

    end
  end

  private

  def contact_message_params
    params.require(:contact_message).permit(:name, :email, :message)
  end

end

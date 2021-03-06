# frozen_string_literal: true

class ConversationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation, except: [:index]
  before_action :check_participating!, except: [:index]

  def show
    @personal_message = PersonalMessage.new
  end

  def new
    @personal_message = current_user.personal_messages.build
  end

  private

  def set_conversation
    @conversation = Conversation.find_by(id: params[:id])
  end

  def check_participating!
    redirect_to root_path unless @conversation&.participates?(current_user)
  end
end

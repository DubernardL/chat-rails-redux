class Api::V1::MessagesController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_channel

  def index
    @messages = @channel.messages.order('created_at ASC')
    render json: @Cannel messages
  end

  def create
  end

  private

  def set_channel
    @channel = Channel.find_by(name: params[:channel_id])
  end
end

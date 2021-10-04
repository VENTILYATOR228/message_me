class ChatroomController < ApplicationController
  before_action :require_user

  def index
    @massage = Message.new
    @messages = Message.custom_display
  end

end
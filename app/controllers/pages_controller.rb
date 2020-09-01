class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @plants = Plant.all
  end

  def chats
    general = Chatroom.find_by(name: "general")
    redirect_to chatroom_path(general) if general
  end
end

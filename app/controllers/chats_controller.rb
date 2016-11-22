class ChatsController  < ApplicationController

  def show

    @request = Request.find(params[:request_id])
    @requester_id = @request.user_id
    @requester_name = User.find(@requester_id).username

    #@requester_id = @request.user_id
    #@requestee_id = @request.selected_user

    #@requester_name = User.find(@requester_id).username
    #@requestee_name = User.find(@requestee_id).username

    @sender_id = current_user.id

    @chats = @request.chats

    @selected_users =  Selecteduser.where(:request_id => @request)


  end

  def accept_user

    @request_id = params[:request_id]

    s = Selecteduser.new
    s.request_id = params[:request_id]
    s.selected_user_id = params[:requestee_id]
    s.desired_skill = params[:desired_skill]
    s.save

    if s.desired_skill == 'Production'
      if Request.find(@request_id).skillsearch_vocals
        redirect_to("/search/results/vocals/#{@request_id}")
      elsif Request.find(@request_id).skillsearch_liveinstrumentation
        redirect_to("/search/results/instruments/#{@request_id}")
      elsif Request.find(@request_id).skillsearch_mixingandmastering
        redirect_to("/search/results/mixandmaster/#{@request_id}")
      else
        redirect_to("/chat/#{@request_id}")
        c = Chat.new
        c.request_id = params[:request_id]
        c.text = "Welcome! Send a message to kick off this collab!"
        c.sender_id = current_user.id
        c.save
      end
    elsif s.desired_skill == 'Vocals'
      if Request.find(@request_id).skillsearch_liveinstrumentation
        redirect_to("/search/results/instruments/#{@request_id}")
      elsif Request.find(@request_id).skillsearch_mixingandmastering
        redirect_to("/search/results/mixandmaster/#{@request_id}")
      else
        redirect_to("/chat/#{@request_id}")
        c = Chat.new
        c.request_id = params[:request_id]
        c.text = "Welcome! Send a message to kick off this collab!"
        c.sender_id = current_user.id
        c.save
      end
    elsif s.desired_skill == 'Live Instruments'
      if Request.find(@request_id).skillsearch_mixingandmastering
        redirect_to("/search/results/mixandmaster/#{@request_id}")
      else
        redirect_to("/chat/#{@request_id}")
        c = Chat.new
        c.request_id = params[:request_id]
        c.text = "Welcome! Send a message to kick off this collab!"
        c.sender_id = current_user.id
        c.save
      end
    else
        redirect_to("/chat/#{@request_id}")
      c = Chat.new
      c.request_id = params[:request_id]
      c.text = "Welcome! Send a message to kick off this collab!"
      c.sender_id = current_user.id
      c.save
    end

  end

  def new_chat

    c = Chat.new
    c.request_id = params[:request_id]
    c.text = params[:text]
    c.sender_id = current_user.id
    c.save

    @request_id = params[:request_id]

    redirect_to("http://localhost:3000/chat/#{@request_id}")

  end


end

class ChatsController  < ApplicationController
  skip_before_action :verify_authenticity_token


  def show

    @request = Request.find(params[:request_id])
    @requester_id = @request.user_id
    @requester_name = User.find(@requester_id).username
    @request_id = params[:request_id]


    @sender_id = current_user.id

    @chats = @request.chats

    @selected_users =  @request.selectedusers

    @files = Chatfile.where(:request_id => @request_id)


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

  def update_request
    r = Request.find(params[:request_id])
    r.final_file = params[:final_file]
    r.save

    @request_id = params[:request_id]
    @request_final_file = r.final_file

    #redirect_to("http://localhost:3000/chat/#{@request_id}")

  end

  def new_file
    #  @request_id = params[:request_id]

    @request_id = params[:request_id]
    @file_comment = params[:file_comment]
    c = Chatfile.new
    c.request_id = params[:request_id]
    c.file = params[:file]
    c.file_comment = params[:file_comment]
    c.sender_id = current_user.id
    c.save

    @request_id = params[:request_id]
    @chatfile_file_url = c.file_url

    redirect_to("http://localhost:3000/chat/#{@request_id}")


  end

  def download_file
    @file = Chatfile.find(params[:id])
    send_file(@file.file.path,
    :type => @file.file.content_type,
    :disposition => 'attachment',
    :url_based_filename => true)

  end

def add_song
c = Completedcollab.new
c.request_id = params[:request_id]
c.file = params[:file]
c.title = params[:title]
c.save

  @songs = Completedcollab.all

@request_id = params[:request_id]

      redirect_to("/showcase")

end

def showcase
  @songs = Completedcollab.all


end

end

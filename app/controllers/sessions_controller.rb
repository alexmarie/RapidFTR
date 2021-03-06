class SessionsController < ApplicationController

#  after_filter :set_cookie
  # GET /sessions/1
  # GET /sessions/1.xml
#  def set_cookie
#    cookies = request.cookies
#    cookies[:session_id] = session.session_id
#  end

  def show
    @session = Session.get(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @session }
    end
  end

  # GET /sessions/new
  # GET /sessions/new.xml
  def new

    @session = Session.new(params[:login])
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @session }
    end
  end


  # POST /sessions
  # POST /sessions.xml
  def create

    @login = Login.new(params[:login])

    @session= @login.authenticate_user

    if @session

      respond_to do |format|
        if @session.save
          cookies[:session_id] = @session.id
          flash[:notice] = 'Hello ' + @session.user_name
          format.html { redirect_to(@session) }
          format.xml  { render :xml => @session, :status => :created, :location => @session }
        else
          format.html { render :action => "new" }
          format.xml  { render :xml => @session.errors, :status => :unprocessable_entity }
        end
      end
    else
      respond_to do |format|
        format.html { render :action => "new" }
        format.xml  { render :xml => @login.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /sessions/1
  # PUT /sessions/1.xml


  # DELETE /sessions/1
  # DELETE /sessions/1.xml
  def destroy
    @session = Session.find(params[:id])
    @session.destroy

    respond_to do |format|
      format.html { redirect_to(sessions_url) }
      format.xml  { head :ok }
    end
  end
end

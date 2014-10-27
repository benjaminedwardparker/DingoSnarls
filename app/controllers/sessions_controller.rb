class SessionsController < ApplicationController

  before_action do
    if session[:dingo_id].present?
      current_dingo
    end
  end

  def sign_in
    if session[:message].present?
      @message = session[:message]
      session[:message] = nil
    else
      @message = ''
    end
  end

  def create
    name = params[:name]
    password = params[:password]
    @dingo = Dingo.find_by name: name
    if @dingo.password == password
      session[:dingo_id] = @dingo.id
      current_dingo
      redirect_to root_path
    else
      session[:message] = "Incorrect Dingo Name or Password"
      redirect_to sign_in_path
    end
  end

  def sign_out
    session[:dingo_id] = nil
    redirect_to root_path
  end

  def sign_up
    @dingo = Dingo.new
  end

  def create_dingo
    @dingo = Dingo.new(params.require(:dingo).permit(:name,
                                                     :password,
                                                     :password_confirmation,
                                                     :age,
                                                     :habitat,
                                                     :photo_url))
    if @dingo.save
      session[:dingo_id] = @dingo.id
      redirect_to root_path
    else
      render :sign_up
    end
  end
end
























#










#

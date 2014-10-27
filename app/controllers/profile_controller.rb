class ProfileController < ApplicationController

  before_action do
    if session[:dingo_id].present?
      current_dingo
    end
  end

  def about_user
    @dingo = Dingo.find(params[:id])
    @snarls = Snarl.where(dingo_id: params[:id]).order("created_at DESC")
    @buttsniffees = @dingo.buttsniffees
  end

  def new_snarl
    @new_snarl = Snarl.new
    @dingo = Dingo.find(session[:dingo_id])
    @new_snarl.dingo_id = session[:dingo_id]
  end

  def create_new_snarl
    @new_snarl = Snarl.new(params.require(:snarl).permit(:dingo_id, :post))
    @new_snarl.dingo_id = session[:dingo_id]
    if @new_snarl.save
      redirect_to about_user_path(id: params[:dingo_id])
    else
      render :new_snarl
    end
  end

  def create_buttsniff
    @new_buttsniff = Buttsniff.new(dingo_id: session[:dingo_id], buttsniffee_id: params[:buttsniffee_id])
    if @new_buttsniff.save
      redirect_to about_user_path(id: session[:dingo_id])
    else
      redirect_to about_user_path(id: params[:buttsniffee_id])
    end
  end

  def destroy_buttsniff
    Buttsniff.find_by(dingo_id: params[:dingo_id], buttsniffee_id: params[:buttsniffee_id]).destroy
    redirect_to about_user_path(id: params[:dingo_id])
  end

  def about_others
  end
end

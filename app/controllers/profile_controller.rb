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


  def about_others
  end
end

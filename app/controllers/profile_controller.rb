class ProfileController < ApplicationController
  def sign_in
  end

  def sign_up
  end

  def about_user
    @dingo = Dingo.find(params[:id])
    @snarls = Snarl.where(dingo_id: params[:id])
    @snarls = @snarls.sort { |a,b| b.created_at <=> a.created_at }
  end

  def new_snarl
    @new_snarl = Snarl.new
    @dingo = Dingo.find(params[:dingo_id])
    @new_snarl.dingo_id = params[:dingo_id]
  end

  def create_new_snarl
    @new_snarl = Snarl.new(params.require(:snarl).permit(:dingo_id, :post))
    @new_snarl.dingo_id = params[:dingo_id]
    if @new_snarl.save
      redirect_to about_user_path(id: params[:dingo_id])
    else
      render :new_snarl
    end
  end


  def about_others
  end
end

class TimelineController < ApplicationController

  before_action do
    if session[:dingo_id].present?
    else
      redirect_to sign_in_path
    end
  end

  def list_all
    # @snarls = Snarl.all.sort { |a,b| b.created_at <=> a.created_at }
    @snarls = Snarl.all_recent.page(params[:page])
    current_dingo
  end

  def list_friends

    dingo_ids = current_dingo.buttsniffees.pluck(:id) + [current_dingo.id]
    @snarls = Snarl.where(dingo_id: dingo_ids).order("created_at desc").page(params[:page])

    # current_dingo
    # @snarls = @current_dingo.snarls
    # current_dingo.buttsniffees.each do |buttsniffee|
    #   @snarls += buttsniffee.snarls
    # end
    # @snarls = @snarls.sort { |a,b| b.created_at <=> a.created_at }
    #@snarls.page(params[:page])
  end
end

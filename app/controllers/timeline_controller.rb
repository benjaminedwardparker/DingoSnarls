class TimelineController < ApplicationController

  before_action do
    if session[:dingo_id].present?
    else
      redirect_to sign_in_path
    end
  end

  def list_all
    # @snarls = Snarl.all.sort { |a,b| b.created_at <=> a.created_at }
    @snarls = Snarl.all_recent
    current_dingo

  end

  def list_friends
  end
end

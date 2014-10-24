class TimelineController < ApplicationController
  def list_all
    @snarls = Snarl.all.sort { |a,b| b.created_at <=> a.created_at }

  end

  def list_friends
  end
end

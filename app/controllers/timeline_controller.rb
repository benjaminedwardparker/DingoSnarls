class TimelineController < ApplicationController
  def list_all
    @snarls = Snarl.all
  end

  def list_friends
  end
end

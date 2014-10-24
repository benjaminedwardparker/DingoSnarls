class ProfileController < ApplicationController
  def sign_in
  end

  def sign_up
  end

  def about_user
    @dingo = Dingo.find_by(id: params[:id])
  end

  def about_others
  end
end

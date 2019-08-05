class MessegesController < ApplicationController
  def new
    @messege = Messege.new
  end

  def create

    @messege = Messege.new()
    @messege.body = params[:body]
    @messege.user = User.find_by(id: params[:user_id])
    @messege.dialog = Dialog.find_by(id: params[:dialog_id])
    @messege.save!

    @dialog = Dialog.find_by(id: params[:dialog_id])
    respond_to do |format|
      format.html {redirect_to @dialog}
      format.js

    end

  end

  def destroy
  end
end

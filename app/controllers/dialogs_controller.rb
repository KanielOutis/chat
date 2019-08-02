class DialogsController < ApplicationController
  def create


      User.find_by(id: session[:user_id]).dialogs.each do |d|
        User.find_by(id: params[:user_id]).dialogs.each do |md|
         if d.id == md.id
          @dialog = Dialog.find(md.id)
         end
        end
      end
    
      #@dialog = Dialog.find_by(users: User.find_by(id: params[:user_id]),  User.find_by(id: session[:user_id]))
      puts [User.find_by(id: params[:user_id]),  User.find_by(id: session[:user_id])]
      if @dialog
        $dialog = @dialog
        redirect_to dialogs_show_path(@dialog)
        puts [User.find_by(id: params[:user_id]),  User.find_by(id: session[:user_id])]

      else
        @dialog = Dialog.new
        @dialog.users <<  User.find_by(id: params[:user_id])
        @dialog.users <<  User.find_by(id: session[:user_id])
        @dialog.save!

      end
  end

  def show
    @dialog = $dialog
    if @dialog
    else
      @dialog = Dialog.find_by(id: params[:id])
    end
  end


end

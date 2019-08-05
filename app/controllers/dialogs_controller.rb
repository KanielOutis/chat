class DialogsController < ApplicationController
  def create
    $dialog
      Dialog.all.each do |d|
        if d.members.split('/').include?(params[:user_id]) and d.members.split('/').include?(String(session[:user_id]))
          $dialog = d
          @dialog = d
          puts @dialog.members
          redirect_to @dialog
          return @dialog
        end
      end
          if @dialog == nil
            redirect_to dialogs_show_path(1)
            @dialog = Dialog.new
            @dialog.users <<  User.find_by(id: params[:user_id])
            @dialog.users <<  User.find_by(id: session[:user_id])
            @dialog.members = ""
            @dialog.members << "#{params[:user_id]}"
            @dialog.members << "/#{session[:user_id]}"
            @dialog.save!
            redirect_to @dialog
          else
            redirect_to @dialog
        end
      end
      def show
        @dialog = $dialog
        @dialgo = Dialog.find_by(id: @dialog.id)
        respond_to do |format|
          format.js { render(partial: 'dialogs/show')}
          format.html

        end
      end
    end

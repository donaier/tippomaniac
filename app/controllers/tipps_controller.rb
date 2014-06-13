class TippsController < ApplicationController

  def index
    @tipps = Tipp.all
  end

  def new
    @tipp = Tipp.new(user_id: current_user.id, game_id: params[:game])
  end

  def create
    @tipp = Tipp.new(tipp_params)

    respond_to do |format|
      if @tipp.save
        format.html { redirect_to root_path, notice: 'Tipp was successfully created.' }
      else
        format.html { render action: 'new' }
        format.json { render json: @tipp.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def tipp_params
      params.require(:tipp).permit(:user_id, :game_id, :tipp_home, :tipp_visitor)
    end
end

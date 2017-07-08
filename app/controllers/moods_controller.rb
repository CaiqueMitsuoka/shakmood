class MoodsController < ApplicationController
  before_action :set_status, only: [:new, :create]

  def new
    @mood = Mood.new
  end

  def create
    @mood = current_user.team.moods.build(status: mood_params[:status])

    if @mood.save
      redirect_to root_path, status: :ok
    else
      render template: "shared/500.html", status: :internal_server_error
    end
  end

  private

  def set_status
    @status = Mood.statuses.keys
  end

  def mood_params
    params.require(:mood).permit(:status, :teams_id)
  end
end

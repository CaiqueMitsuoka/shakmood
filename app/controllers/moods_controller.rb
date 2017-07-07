class MoodsController < ApplicationController
  before_action :set_status, only: :new

  def new
    @mood = Mood.new
  end

  def create
  end

  private

  def set_status
    @status = Mood.statuses.to_a
  end
end

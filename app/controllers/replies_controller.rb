class RepliesController < ApplicationController

  def create
  end

  def destroy
  end

  def show
    @now = Now.find(params[:id])
  end

end

class SearchesController < ApplicationController

  def search
    @nows = Now.where('now_body LIKE ?', "%#{params[:content]}%")
  # binding.pry
  end

end

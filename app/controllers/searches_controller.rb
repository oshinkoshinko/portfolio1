class SearchesController < ApplicationController

  def search
   # binding.pry
    @content = params[:content]
    @hobby_code = params[:hobby_code]

  end

end

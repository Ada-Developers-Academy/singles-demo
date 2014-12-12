class SinglesController < ApplicationController
  def show
    @single = Single.find(params[:id])
    response = { title:  @single.title,
                 artist: @single.artist,
                 release_date: @single.release_date
    }

    respond_to do |format|
      format.html
      format.json { render json: response }
      format.xml  { render xml: response }
    end
  end
end

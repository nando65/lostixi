class RatingsController < ApplicationController

  def update
    @rating = Rating.find(params[:id])
    # @comment = @rating.score
    if @rating.update_attributes(score: params[:score], follower_id: current_user.id)
      respond_to do |format|
        format.js
      end
    end
  end

end
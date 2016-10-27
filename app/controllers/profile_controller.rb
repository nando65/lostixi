class ProfileController < ApplicationController
  def index


    @rating1 = Rating.where(subject_id: current_user.id).first
    @rating = Rating.where(subject_id: current_user.id)

    @score_cumulative = 0
    @score_counter = 0
    @rating.each do |r|
      @score_cumulative =  @score_cumulative+r.score
      @score_counter = @score_counter+1
      @rating_average =  Float(@score_cumulative)/Float(@score_counter)
    end

# unless @rating = Rating.create(subject_id: @current_user.id, score: 0);
# end

    # @user = @rating.subject_id
  end
end

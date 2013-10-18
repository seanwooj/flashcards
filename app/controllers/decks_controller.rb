class DecksController < ApplicationController
  def create
    @deck = current_user.decks.build(deck_params)
    unless @deck.save!
      flash[:error] = "error saving deck"
    end

    redirect_to dashboard_path 
  end
  
  private

  def deck_params
    params.require(:deck).permit(:name, :user_id)
  end

end

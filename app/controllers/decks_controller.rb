class DecksController < ApplicationController
  def create
    @deck = current_user.decks.build(deck_params)
    unless @deck.save!
      flash[:error] = "error saving deck"
    end

    redirect_to dashboard_path 
  end

  def show
    @deck = Deck.find(params[:id])
    @cards = @deck.cards
    @card = Card.new
  end
  
  private

  def deck_params
    params.require(:deck).permit(:name, :user_id)
  end

end

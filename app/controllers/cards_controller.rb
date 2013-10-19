class CardsController < ApplicationController
  def create
    @deck = Deck.find(params[:deck_id])
    @card = @deck.cards.build(card_params)

    unless @card.save
      flash[:error] = "card didn't save"
    end
    redirect_to @deck
  end

  def destroy
    @deck = Deck.find(params[:deck_id])
    @card = Card.find(params[:id])
    @card.destroy
    redirect_to @deck
  end

  private
  
  def card_params
    params.require(:card).permit(:front, :back)
  end
end

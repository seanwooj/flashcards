class DashboardsController < ApplicationController
  def show
    @deck = Deck.new
    @decks = current_user.decks
  end
end

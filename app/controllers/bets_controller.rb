class BetsController < ApplicationController

  def create
    bet = Bet.new_bet(params)
    if bet.save
      render json: { message: "Bet created successfully" }, status: :created
    else
      render json: { errors: bet.errors.full_messages }, status: :bad_request
    end
  end

end

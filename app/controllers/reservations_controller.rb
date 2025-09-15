class ReservationsController < ApplicationController
  before_action :set_reservation, only: :show

  def index
    @reservations = Reservation.all
  end

  def show; end

  private

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end
end

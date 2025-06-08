class ReservationsController < ApplicationController
  def index
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_params)
    if @reservation.save
      redirect_to root_path, notice: "予約が完了しました！"
    else
      render :new
    end
  end
    private

    def reservation_params
      params.require(:reservation).permit(:name, :phone, :reserved_at)
    end
end

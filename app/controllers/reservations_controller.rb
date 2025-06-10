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

  def step1
    @menu = ["歯が痛い", "詰め物が取れた", "矯正したい", "その他"]
  end

  def step1_submit
    selected_menu = params[:menu]
    if selected_menu.blank?
      flash[:alert] = "診療メニューを選択してください"
      redirect_to reservations_step1_path
      else
      session[:menu] = selected_menu
      redirect_to reservations_step2_path
    end
  end

    private

    def reservation_params
      params.require(:reservation).permit(:name, :phone, :reserved_at)
    end
end

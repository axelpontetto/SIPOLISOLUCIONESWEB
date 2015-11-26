class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  # GET /payments
  # GET /payments.json
  def index
    @payments = Payment.all
  end

  # GET /payments/1
  # GET /payments/1.json
  def show
  end

  # GET /payments/new
  def new
    @payment = Payment.new
  end

  # GET /payments/1/edit
  def edit
  end

  # POST /payments
  # POST /payments.json
  def create

    verificacion = 1.times.map{0 + Random.rand(2)}
    @payment = Payment.new(payment_params)

    respond_to do |format|
      if (verificacion.first == 1) &&(@payment.save)
        current_user.premium=true
        current_user.save
        format.html { redirect_to payments_path, notice: 'El pago fue concretado correctamente. Ahora sos premium!' }
        format.json { render :show, status: :created, location: @payment }
        #flash[:notice] = verificacion
        flash[:notice] = "Pago efectuado correctamente."
        else
          format.html { render :new }
         format.json { render json: @payment.errors, status: :unprocessable_entity }
         #flash[:notice] = verificacion
          flash[:notice] = "tarjeta invalida"
       end
    end
  end

  # PATCH/PUT /payments/1
  # PATCH/PUT /payments/1.json
  def update
     verificacion = 1.times.map{0 + Random.rand(2)}
    @payment = Payment.new(payment_params)
    respond_to do |format|
      if (@payment.save)&&(verificacion.first == 1)
        current_user.premium=true
        current_user.save
        format.html { redirect_to payments_path, notice: 'El pago fue concretado correctamente. Ahora sos premium!' }
        format.json { render :show, status: :ok, location: @payment }
      else
        format.html { render :edit }
        format.json { render json: @payment.errors, status: :unprocessable_entity }
          flash[:notice] = "tarjeta invalida"
      end
    end
  end

  # DELETE /payments/1
  # DELETE /payments/1.json
  def destroy
    @payment.destroy
    current_user.premium= false
    current_user.save
    respond_to do |format|
      format.html { redirect_to payments_url, notice: 'Pago cancelado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment
      @payment = Payment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def payment_params
      params.require(:payment).permit(:amount, :responseCode, :responseMessage)
    end
end

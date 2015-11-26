class ValorationUsersController < ApplicationController
  before_action :set_valoration_user, only: [:show, :edit, :update, :destroy]

  # GET /valoration_users
  # GET /valoration_users.json
  def index
    @valoration_users = ValorationUser.all
  end

  # GET /valoration_users/1
  # GET /valoration_users/1.json
  def show
  end

  # GET /valoration_users/new
  def new
    @valoration_user = ValorationUser.new( user_id: params[:user_id],reservation_id: params[:reservation_id] )
  end

  # GET /valoration_users/1/edit
  def edit
  end

  # POST /valoration_users
  # POST /valoration_users.json
  def create
    @valoration_user = ValorationUser.new(valoration_user_params)
    @valoration_user.reservation.valorar_user = true
    respond_to do |format|
      if @valoration_user.save
        format.html { redirect_to @valoration_user, notice: 'Valoration de usuario creada satisfactoriamente.' }
        format.json { render :show, status: :created, location: @valoration_user }
      else
        format.html { render :new }
        format.json { render json: @valoration_user.errors, status: :unprocessable_entity }
      end
    end
    @valoration_user.save
  end

  # PATCH/PUT /valoration_users/1
  # PATCH/PUT /valoration_users/1.json
  def update
    respond_to do |format|
      if @valoration_user.update(valoration_user_params)
        format.html { redirect_to @valoration_user, notice: 'Valoracion de usuario actualizada satisfactoriamente.' }
        format.json { render :show, status: :ok, location: @valoration_user }
      else
        format.html { render :edit }
        format.json { render json: @valoration_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valoration_users/1
  # DELETE /valoration_users/1.json
  def destroy
    @valoration_user.destroy
    respond_to do |format|
      format.html { redirect_to valoration_users_url, notice: 'Valoracion de usuario eliminada correctamente .' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valoration_user
      @valoration_user = ValorationUser.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valoration_user_params
      params.require(:valoration_user).permit(:valor, :user_id, :reservation_id)
    end
end

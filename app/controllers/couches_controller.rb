class CouchesController < ApplicationController
  before_action :get_couch, only:[:edit, :update, :destroy, :show]

  def get_couch
    @couch = Couch.find(params[:id])
  end 

  def index
  end

  def show
  end

  def new
    @couch = Couch.new 
  end

  def edit
  end

  def create
    @couch = Couch.new(params.require(:couch).permit(:nombre, :descripcion, :user_id, :category_id, :ciudad, :provincia, :capacidad, :url))
    @couch.user_id = current_user.id
    if @couch.save
      flash[:notice] = "Couch creado correctamente."
      redirect_to @couch
    else
      flash[:notice] = "Error al crear el Couch."
      render 'new'
    end
  end

  def update
    if @couch.update(params.require(:couch).permit(:nombre, :descripcion, :category_id, :ciudad, :provincia, :capacidad, :url))
      flash[:notice] = "Couch editado correctamente."
      redirect_to couches_path
    else
      flash[:notice] = "Error al editar el couch."
      render 'edit'
    end
  end

  def destroy
    if @couch.destroy;
      flash[:notice] = "Couch borrado correctamente."
      redirect_to @couch
    else
      flash[:notice] = "Error al borrar el Couch."
    end
  end
end

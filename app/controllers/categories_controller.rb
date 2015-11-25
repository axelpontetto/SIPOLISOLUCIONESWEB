class CategoriesController < ApplicationController
  
  before_action :get_category, only:[:edit, :update, :destroy, :show]
  def get_category
    @category = Category.find(params[:id])
  end

  def index
  end

  def show
  end

  def new
    @category = Category.new
  end

  def edit
   
  end

  def create
   @category = Category.new(params.require(:category).permit(:nombre))
   @category.estado = true
   if @category.save
    flash[:notice] = "Categoria creada correctamente."
    redirect_to categories_path
   else
    flash[:notice] = "Error al crear categoria."
    render 'new'
   end
  end

  def update
    if @category.update(params.require(:category).permit(:nombre))
      flash[:notice] = "Categoria editada correctamente."
      redirect_to categories_path
    else
      flash[:notice] = "Error al editar la categoria."
      render 'edit'
    end
  end

  def destroy
   if @category.couches.count == 0

    @category = Category.find(params[:id])
    @category.destroy;
    flash[:notice] = "Categoria borrada correctamente."
   else

    @category.estado = false 
    @category.save
    flash[:notice] = "La categoria tiene couches asociados, se realizo una baja logica."
    end

    redirect_to categories_path
  end
   
end

class Users::RegistrationsController < Devise::RegistrationsController
before_filter :configure_sign_up_params, only: [:create]
before_filter :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
     super
     #@user = User.find(params[:id])
     #age= (Date.today.year - @user.nacimiento.year)
     #mon= (Date.today.month - @user.nacimiento.month)
     #days= (Date.today.day - @user.nacimiento.day)
     #if (age > 18) 
      #if (mon > 0)
       #if (days > 0)
      #   @user.edad :age
      # else
      #  @user.edad :age-1
    #  end
    # else
     # @user.edad :age-1
     #end
    #else
     # @user.edad :age-1
   # end
 end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.for(:sign_up) << [:name,:email, :password, :password_confirmation, :premium, :edad,:apellido, :pais, :direccion, :telefono, :nacimiento]
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.for(:account_update) << [:name,:email, :password, :password_confirmation, :premium, :edad, :apellido, :pais, :direccion, :telefono, :nacimiento]
  end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  # def sign_up_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation)
  # end
  # def account_update_params
  #   params.require(:user).permit(:name, :email, :password, :password_confirmation, :current_password)
  # end
end

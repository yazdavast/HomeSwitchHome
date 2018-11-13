class AdministratorsController < ApplicationController

  def home
  	render :layout =>false
  	
  end

  def validarLogIn
    if (params[:nombreDeUsuario].present? && params[:clave].present?) 
      admin=Administrator.where(nomUsuario: params[:nombreDeUsuario],password: params[:clave] )
      if admin.blank? then
         flash[:notice]="Email o Contraseña inválida ..."
        redirect_to '/iniciarSesion'#, notice: 'Email o Contraseña inválida ...'
       #FLASH NOTICE NO FUNCIONA!
         
        
       else
          redirect_to "/residences"
       end 
     end
    
  end

   def iniciarSesion
   	render :layout =>false
  
  end
 

  def default


  end
end

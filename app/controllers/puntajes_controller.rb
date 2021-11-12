class PuntajesController < ApplicationController

  before_action :asignar_puntaje, only: [:mostrar, :editar, :actualizar, :eliminar]
  # GET /puntajes
  def listar
    @todos_los_puntajes = Puntajes.all
  end

  # GET /puntajes/nuevo
  def crear
    @puntaje = Puntaje.new
  end

  # GET /puntajes/:id
  def mostrar
    @puntaje = Puntaje.find(params[:id])
  end

  # GET /puntajes/:id/editar
  def editar
    @puntaje = Puntaje.find(params[:id])
  end

  # POST /puntajes
  def guardar
    nuevo_puntaje = Puntaje.new(params_puntaje)
    nuevo_puntaje.save 

    redirect_to puntajes_path
  end

  # PUT     /puntajes/:id
  # PATH    /puntajes/:id
  def actualizar
    @puntaje.tipo = params_puntaje[:tipo]
    @puntaje.save
    redirect_to puntajes_path
  end

  # DELETE /puntajes/:id
  def eliminar
    puntaje.destroy
    redirect_to puntajes_path
  end

  private
  def asignar_puntaje
    puntaje = Puntaje.find(params[:id])
  end

  def params_puntaje
    params.require(:puntaje).permit(:tipo)
  end

end



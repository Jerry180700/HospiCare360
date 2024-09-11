class NursesController < ApplicationController
  before_action :set_nurse, only: %i[show edit update destroy]  
  # Método de listado de las enfermeras
  def index
    @nurses = Nurse.all
  end

  # Métodos para mostrar detalles de la enfermera
  def show
  end

  # Para crear, hacer una nueva instancia del modelo
  def new
    @nurse = Nurse.new
  end

  # GET - Para edición
  def edit
  end

  # POST para recibir los parámetros de un formulario y guardar en la bd
  def create
    @nurse = Nurse.new(nurse_params)
    if @nurse.save
      redirect_to nurse_url(@nurse), notice: "Nurse was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH - tomar un registro existente y actualizarlo
  def update
    if @nurse.update(nurse_params)
      redirect_to nurse_url(@nurse), notice: "Nurse was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE para eliminar
  def destroy
    @nurse.destroy!
    redirect_to nurses_url, notice: 'Nurse was succesfully destroyed'
  end

private

  def set_nurse
    @nurse = Nurse.find(params[:id])
  end

  def nurse_params
    params.require(:nurse).permit(:firstname, :lastname)
  end
end

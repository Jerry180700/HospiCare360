class DoctorsController < ApplicationController
  before_action :set_doctor, only: %i[show edit update destroy]

  def index
    @doctors = Doctor.all
  end

  def show
  end

  def new
    @doctor = Doctor.new
  end

  def create
    @doctor = Doctor.new(doctor_params)
    if @doctor.save
      redirect_to @doctor, notice: 'Doctor was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @doctor.update(doctor_params)
      redirect_to @doctor, notice: 'Doctor was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @doctor.destroy
    redirect_to doctors_url, status: :see_other, notice: 'Doctor was successfully destroyed.'
  end

  private

  def set_doctor
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit(:name, :specialty)
  end
end

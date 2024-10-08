class BedsController < ApplicationController
  before_action :set_bed, only: %i[show edit update destroy]

  def index
    @beds = Bed.all
  end

  def show
    @bed = Bed.find(params[:id])
  end

  def new
    @bed = Bed.new
  end

  def create
    @bed = Bed.new(bed_params)

    if @bed.save
      redirect_to @bed, notice: 'Bed was successfully created.'
    else
      render :new
    end
  end

  def edit
    @bed = Bed.find(params[:id])
  end

  def update
    if @bed.update(bed_params)
      redirect_to @bed, notice: 'Bed was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @bed.destroy
    redirect_to beds_url, notice: 'Bed was successfully destroyed.'
  end

  private

  def set_bed
    @bed = Bed.find(params[:id])
  end

  def bed_params
    params.require(:bed).permit(:created_at, :updated_at, :patient_id)
  end
end

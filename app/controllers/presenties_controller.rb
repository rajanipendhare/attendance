class PresentiesController < ApplicationController
  before_action :find_presenty, only: %i[edit update destroy]
  before_action :build_presenty, only: %i[new create]

  def index
    @presenties = Presenty.all

  end

  def new
  	@presenties = Presenty.all
  end

  def edit; end

  def show; end

  def create
    @presenty = Presenty.new(presenty_params)
    if @presenty.save
      redirect_to new_presenty_path
      flash[:success] = 'Presenty Successfully Created'
    else
      render :new
      flash[:notice] = 'Presenty Not Create!'
    end
  end

  def update
    if @presenty.update_attributes(presenty_params)
      redirect_to new_presenty_path
      flash[:success] = 'Presenty Successfully Update'
    else
      render :edit
      flash[:notice] = 'Presenty Not Update!'
    end
  end
  def destroy
   	if @presenty.destroy
      redirect_to new_presenty_path
      flash[:success] = 'Presenty Successfully Deleted'
    else
      flash[:notice] = 'Presenty Not Deleted!'
    end
  end
  private

  def find_presenty
    @presenty = Presenty.find(params[:id])
  end

  def build_presenty
    @presenty = Presenty.new
  end

  def presenty_params
    params.require(:presenty).permit(:status, :student_id)
  end
end
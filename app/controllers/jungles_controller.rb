class JunglesController < ApplicationController

  def index
    @jungles = Jungle.all
    authorize @jungle
  end

  def show
    @jungle = jungle.find(params[:id])
    authorize @jungle
  end

  def new
    @jungle = Jungle.new
    authorize @jungle
  end

  def create
    set_user
    @jungle = Jungle.new(jungle_params)
    authorize @jungle
    @jungle.user = @user
    @jungle.save
    authorize @jungle
    if @jungle.save!
      # jungle.create!(title: life_params.title, description: life_params.description, user_id: current_user.id)
      redirect_to jungle_path(@jungle)
    else
      render :new
    end
  end

  def edit
  	authorize @jungle
  end

  def update
  	authorize @jungle
  end

  def destroy
    @jungle = jungle.find(params[:id])
    authorize @jungle
    @jungle.destroy!
    redirect_to jungles_path, notice: ' Your Jungle was successfully destroyed.'
  end

  private

  def set_user
    @user = current_user
  end

  def jungle_params
    params.require(:jungle).permit(:name, :address)
  end
end

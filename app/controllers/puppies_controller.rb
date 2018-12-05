class PuppiesController < ApplicationController
  def index
    @puppies = Puppy.all

    respond_to do |format|
      format.html
      format.json { render json: @puppies }
    end
  end

  def show
    @puppy = current_puppy

    respond_to do |format|
      format.html
      format.json { render json: @puppy }
    end
  end

  def new
    @puppy = Puppy.new
  end

  def create
    @puppy = Puppy.new(puppy_params)
    if @puppy.save
      flash[:success] = 'Puppy created!'
      redirect_to @puppy
    else
      flash.now[:danger] = 'Puppy creation failed'
      render :new
    end
  end

  def edit
    @puppy = current_puppy
  end

  def update
    @puppy = current_puppy
    if @puppy.update_attributes(puppy_params)
      flash[:success] = 'Puppy updated!'
      redirect_to @puppy
    else
      flash.now[:danger] = 'Puppy modification failed'
      render :edit
    end
  end

  def destroy
    current_puppy.destroy
    redirect_to puppies_path
  end

  private

    def puppy_params
      params.require(:puppy).permit(:name, :age, :cuteness, :softness)
    end

    def current_puppy
      Puppy.find(params[:id])
    end
end

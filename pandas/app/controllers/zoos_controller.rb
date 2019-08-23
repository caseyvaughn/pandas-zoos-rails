class ZoosController < ApplicationController
  def index
    @zoos = Zoo.all
  end

  def show
    @zoo = Zoo.find params [:id]
  end

  def create
    @zoo = Zoo.new zoo_params
    if @zoo.save
      redirect_to @zoo
    end
  end

  def update
    @zoo = Zoo.find params[:id]
    if @zoo.update zoo_params
      redirect_to @zoo
    end
  end

  def destroy
    @zoo = Zoo.find params[:id]
    @zoo.destroy
    redirect_to zoos_url
  end

  private

  def zoo_params
    params.require(:zoo).permit(:name, :city)
  end

end

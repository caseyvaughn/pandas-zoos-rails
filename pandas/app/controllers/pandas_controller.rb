class PandasController < ApplicationController
  def index
    @pandas = Panda.all
  end

  def show
    @panda = Panda.find params [:id]
  end

  def create
    @panda = Panda.new panda_params
    if @panda.save
      redirect_to @panda
    end
  end

  def update
    @panda = Panda.find params[:id]
    if @panda.update panda_params
      redirect_to @panda
    end
  end

  def destroy
    @panda = Panda.find params[:id]
    @panda.destroy
    redirect_to pandas_url
  end

  private

  def panda_params
    params.require(:panda).permit(:name, :age)
  end
end

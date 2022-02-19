class PandasController < ApplicationController
  def index
    @pandas = Panda.all

    render json: @pandas
  end

  # GET /Pandas/1
  def show
    @panda = Panda.find(params[:id])

    render json: @panda
  end

  # POST /Pandas
  def create
    @panda = Panda.create(params)

    render json: @panda
  end

  # PUT /Pandas/1
  def update
    @panda = Panda.find(params[:id])
    @panda.update(params)

    render json: @panda
  end

  # DELETE /Pandas/1
  def destroy
    @panda = Panda.find(params[:id])

    @panda.destroy
  end
end

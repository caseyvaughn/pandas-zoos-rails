class ZoosController < ApplicationController
  def index
    @zoo = Zoo.all

    render json: @zoo
  end

  # GET /Zoos/1
  def show
    @zoo = Zoo.find(params[:id])

    render json: @zoo
  end

  # POST /Zoos
  def create
    @zoo = Zoo.create(params)

    render json: @zoo
  end

  # PUT /Zoos/1
  def update
    @zoo = Zoo.find(params[:id])
    @zoo.update(params)

    render json: @zoo
  end

  # DELETE /Zoos/1
  def destroy
    @zoo = Zoo.find(params[:id])

    @zoo.destroy
  end


end

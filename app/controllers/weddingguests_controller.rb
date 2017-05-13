class WeddingguestsController < ApplicationController
  def index
    @weddingguests = Weddingguest.all
    render 'index'
  end
  def show
    @weddingguest = Weddingguest.find(params[:id])
    render 'show'
  end
  def new
    @weddingguest = Weddingguest.new
    render 'new'
  end
  def edit
    @weddingguest = Weddingguest.find(params[:id])
    render 'edit'
  end
  def create
    @weddingguest = Weddingguest.new(weddingguest_params)
    if @weddingguest.save
      redirect_to @weddingguest, notice: 'Weddingguest was successfully created.'
    else
      render action: 'new'
    end
  end
  def update
    @weddingguest = Weddingguest.find(params[:id])
    if @weddingguest.update(weddingguest_params)
      redirect_to @weddingguest, notice: 'Weddingguest was successfully updated.'
    else
      render action: 'edit'
    end
  end
  def destroy
    @weddingguest = Weddingguest.find(params[:id])
    @weddingguest.destroy
    redirect_to weddingguests_url, notice: 'Weddingguest was successfully destroyed.'
  end
  private
  # Only allow a trusted parameter "white list" through.
  def weddingguest_params
    params.require(:weddingguest).permit(:name, :description, :picture)
  end

end

class ConfessionsController < ApplicationController
  def index
    @confessions = Confession.all.order(created_at: :desc)
  end

  def new
    @confession = Confession.new
  end

  def create
    @confession = Confession.new(confession_params)
    # @confession.name = params[:name]
    # @confession.body = params[:body]

    if @confession.save
      redirect_to confessions_path
    else
      render :new
    end

  end

  def show
    @confession = Confession.find(params[:id])
  end

  def edit
    @confession = Confession.find(params[:id])
  end

  def update
    @confession = Confession.find(params[:id])

    if @confession.update(confession_params)
      redirect_to @confession
    else
      render :edit
    end
  end

  def destroy
    @confession = Confession.find(params[:id])
    @confession.destroy

    redirect_to confessions_path
  end

  private

  def confession_params
    params.require(:confession).permit(:name, :body)

  end
end

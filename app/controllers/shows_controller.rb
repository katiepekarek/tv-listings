class ShowsController <ApplicationController
  def new
    @show = Show.new
  end

  def create
    @show = Show.new(show_params)
    if @show.save
      flash[:notice] = "#{@show.name} Successfully Added"
      redirect_to show_path(@show)
    else
      render :new
    end
  end

  def show
    @show = Show.find(params[:id])
  end

  def edit
    @show = Show.find(params[:id])
  end

  def update
    @show = Show.find(params[:id])
    if @show.update(show_params)
      flash[:notice] = "#{@show.name} Successfully Updated"
      redirect_to show_path(@show)
    else
      render :edit
    end
  end

  private

  def show_params
    params.require(:show).permit(:name)
  end
end

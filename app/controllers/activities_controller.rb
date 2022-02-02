class ActivitiesController < ApplicationController
  def index
    @group = Group.find_by(id: params[:group_id])
    @total_amount = 0
    @transactions = Activity.includes(:groups).where("groups.id = #{params[:group_id]}").references(:groups)
    @transactions.each do |activity|
      @total_amount += activity.amount
    end
  end

  def new
    @activity = Activity.new
    @groups = current_user.groups.all
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.author_id = current_user.id
    if @activity.save
      flash[:success] = 'Object successfully created'
      redirect_to activities_home_path(@activity.groups.first.id)
    else
      flash[:error] = 'Something went wrong'
      render 'new'
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:name, :amount, group_ids: [])
  end
end

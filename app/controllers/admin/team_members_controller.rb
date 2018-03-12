class Admin::TeamMembersController < Admin::ApplicationController
  def index
    @team_members = collection.page(params[:page]).per(10)
  end

  def show
    @team_member = resource
  end

  def new
    @team_member = TeamMember.new
  end

  def create
    @team_member = TeamMember.create(resource_params)

    if @team_member.persisted?
      redirect_to admin_team_member_path(@team_member), success: 'Team member post was created'
    else
      render :new
    end
  end

  def edit
    @team_member = resource
  end

  def update
    @team_member = resource

    if @team_member.update(resource_params)
      redirect_to admin_team_member_path(@team_member), notice: 'Team member post was updated'
    else
      render :edit
    end
  end

  def destroy
    @team_member = resource

    if @team_member.destroy
      redirect_to admin_team_members_path, success: 'Team member post was deleted successfully'
    else
      redirect_to admin_team_members_path, error: 'Team member post was not deleted'
    end
  end

  protected

  def collection
    TeamMember.all
  end

  def resource
    collection.find(params[:id])
  end

  def resource_params
    params
      .require(:team_member)
      .permit(:name, :position, :photo)
  end
end
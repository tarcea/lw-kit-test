class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def new
    @member = Member.new
  end

  def show
    @member = Member.find(params[:id])
  end

  def create
    @member = Member.new(member_params)
    # @member.user = current_user
    if @member.save
      redirect_to members_path, notice: 'successfully created.'
    else
      render :new
    end
  end

  private

  def member_params
    params.require(:member).permit(:first_name, :last_name, :domain)
  end
end

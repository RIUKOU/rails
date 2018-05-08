class MembersController < ApplicationController
  def new
    @member = Member.new
  end

  def show
    @member = Member.find(params[:id])
  end

  def index
    @members = Member.all.sort
  end
  
  def create
    @member = Member.new(member_params)
    @member.save
    redirect_to members_show_url(id: @member.id)
  end
  
  def edit
    @member = Member.find(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])
    @member.update_attributes(member_params)
    redirect_to members_show_url(id: @member.id)
  end
  
  def delete
    #Member.find(params[:id]).destroy
    m = Member.find(params[:id])
    m.destroy
    redirect_to members_index_path
  end
  
private
  def member_params
    params.require(:member).permit(:name, :age)
  end
end
class HostController < ApplicationController

  def index
    hosts = Host.all
    render :json => hosts
  end

  def update
    host = Host.find_or_initialize_by(uuid: params[:uuid])
    host.hostname = params[:hostname]
    host.hostgroup = params[:hostgroup]
    host.ipaddress = params[:ipaddress]
    host.network = params[:network]
    host.status = params[:status]
    host.touch
    host.save

    redirect_to root_path
    
  end

end

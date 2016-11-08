class API::ClientsController < ApplicationController
  before_action :set_client, only: [:show, :update, :destroy]
  before_action :set_clients, only: [:index]
  before_action :client_params, only: [:create, :update]

#Show all clients
  def index
    render json: @clients
  end

#Show one client
  def show
    render json: @client
  end

#Create new client
  def create
    @client = Client.new(client_params)

    if @client.save

      render json: @client, status: 201, location: api_clients_path
    else
      render json: @client.errors.messages, status: 404
    end
  end

#Update the client's details
  def update
    @client.assign_attributes(client_params)

    if @client.save
      head 201
    else
      render json: { message: "Client doesn't exist" }, status: 404
    end
  end

#Delete one client
  def destroy
    if @client.destroy
      render json: @clients, status: 201, location: api_clients_path
    else
      render json: @client.errors.messages
    end
  end


private
  def set_clients
    @clients = Client.all
    if @clients.nil?
      render json: "No Clients Found", status: 404
    end
  end

  def set_client
    @client = Client.find_by(id: params[:id])
    if @client.nil?
      render json: "Client with id #{params[:id]} not found", status: 404
    end
  end

  def client_params
    params.permit(:id, :first_name, :last_name, :email, :address, :mobile_phone, :home_phone)
  end

end
class CustomersController < ApplicationController

  before_action :set_customer, only: %i[ show ]

  def index

    @customers = Customer.all

  end
  
  def show


  end

  def new

    @customer = Customer.new

  end

  def create

    @customer = Customer.new(customer_params)

    respond_to do |format|    

      if @customer.save

        format.html {

          redirect_to customers_path,
          notice: "Cliente registrado com sucesso!"
        
        }

        format.json {

          render :new,
          status: :unprocessable_entity

        }

      else

        format.html {

          render :new,
          status: :unprocessable_entity

        }


        format.json {

          render json: @customer.errors,
          status: :unprocessable_entity

        }

      end

    end

  end

  private

    def set_customer

      @customer = Customer.find(params[:id])
    
    end

    def customer_params

      params.require(:customer).permit(:name, :phone)

    end


end
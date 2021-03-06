class Admin::CustomersController < ApplicationController
  before_action :authenticate_admin!

  def index
    @customers=Customer.all
  end

  def show
    @customer=Customer.find(params[:id])
    @have_lessons=HaveLesson.where(customer_id: @customer.id)
    @lessons=Lesson.where(customer_id: @customer.id)

  end

  def edit
    @customer=Customer.find(params[:id])
  end

  def update
    @customer=Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_customers_path
  end

  private

  def customer_params
    params.require(:customer).permit(:last_name, :first_name, :last_name_kana, :first_name_kana, :postal_code, :address, :phone_number, :nickname, :profile, :image, :transfer_target, :is_deleted)
  end
end

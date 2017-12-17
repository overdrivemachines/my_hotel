class PropertiesController < ApplicationController
  before_action :set_property, only: [:show, :edit, :update, :destroy]

  # GET /properties
  # GET /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1
  # GET /properties/1.json
  def show
  end

  # GET /properties/new
  def new
    @property = Property.new
    @property.name = Faker::Company.name
    @property.address1 = Faker::Address.street_address
    @property.address2 = ""
    @property.city = Faker::Address.city
    @property.state = Faker::Address.state
    @property.zip = Faker::Address.zip
    @property.phone = Faker::PhoneNumber.phone_number
    @property.fax = Faker::PhoneNumber.phone_number
    @property.email = Faker::Internet.email
    @property.check_in_at = "15:00"
    @property.check_out_at = "11:00"
    @property.night_audit_auto = [true, false].sample
    @property.night_audit_time = "04:00"
    @property.night_audit_emails = Faker::Internet.email
    @property.print_reg_cards_auto = [true, false].sample
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties
  # POST /properties.json
  def create
    @property = Property.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to @property, notice: 'Property was successfully created.' }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1
  # PATCH/PUT /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to @property, notice: 'Property was successfully updated.' }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1
  # DELETE /properties/1.json
  def destroy
    @property.destroy
    respond_to do |format|
      format.html { redirect_to properties_url, notice: 'Property was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def property_params
      params.require(:property).permit(:name, :address1, :address2, :city, :state, :zip, :phone, :fax, :email, :check_in_at, :check_out_at, :night_audit_auto, :night_audit_time, :night_audit_emails, :print_reg_cards_auto)
    end
end

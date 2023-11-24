class PersonsRegistersController < ApplicationController
  before_action :set_persons_register, only: %i[ show edit update destroy ]

  # GET /persons_registers or /persons_registers.json
  def index
    @persons_registers = PersonsRegister.all
  end

  # GET /persons_registers/1 or /persons_registers/1.json
  def show
  end

  # GET /persons_registers/new
  def new
    @persons_register = PersonsRegister.new
  end

  # GET /persons_registers/1/edit
  def edit
  end

  # POST /persons_registers or /persons_registers.json
  def create
    @persons_register = PersonsRegister.new(persons_register_params)

    respond_to do |format|
      if @persons_register.save
        format.html { redirect_to persons_register_url(@persons_register), notice: "Persons register was successfully created." }
        format.json { render :show, status: :created, location: @persons_register }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @persons_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /persons_registers/1 or /persons_registers/1.json
  def update
    respond_to do |format|
      if @persons_register.update(persons_register_params)
        format.html { redirect_to persons_register_url(@persons_register), notice: "Persons register was successfully updated." }
        format.json { render :show, status: :ok, location: @persons_register }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @persons_register.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /persons_registers/1 or /persons_registers/1.json
  def destroy
    @persons_register.destroy

    respond_to do |format|
      format.html { redirect_to persons_registers_url, notice: "Persons register was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_persons_register
      @persons_register = PersonsRegister.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def persons_register_params
      params.require(:persons_register).permit(:name, :cpf, :rg)
    end
end

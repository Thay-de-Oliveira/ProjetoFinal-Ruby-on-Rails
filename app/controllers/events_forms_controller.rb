class EventsFormsController < ApplicationController
  before_action :set_events_form, only: %i[ show edit update destroy ]

  # GET /events_forms or /events_forms.json
  def index
    @events_forms = EventsForm.all
  end

  # GET /events_forms/1 or /events_forms/1.json
  def show
  end

  # GET /events_forms/new
  def new
    @events_form = EventsForm.new
  end

  # GET /events_forms/1/edit
  def edit
  end

  # POST /events_forms or /events_forms.json
  def create
    @events_form = EventsForm.new(events_form_params)

    respond_to do |format|
      if @events_form.save
        format.html { redirect_to events_form_url(@events_form), notice: "Events form was successfully created." }
        format.json { render :show, status: :created, location: @events_form }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @events_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /events_forms/1 or /events_forms/1.json
  def update
    respond_to do |format|
      if @events_form.update(events_form_params)
        format.html { redirect_to events_form_url(@events_form), notice: "Events form was successfully updated." }
        format.json { render :show, status: :ok, location: @events_form }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @events_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /events_forms/1 or /events_forms/1.json
  def destroy
    @events_form.destroy

    respond_to do |format|
      format.html { redirect_to events_forms_url, notice: "Events form was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_events_form
      @events_form = EventsForm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def events_form_params
      params.require(:events_form).permit(:categoryevent, :grouping, :subgrouping, :species, :subspecies)
    end
end

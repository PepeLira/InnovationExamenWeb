class CommunicatesController < ApplicationController
  before_action :set_communicate, only: [:show, :edit, :update, :destroy]

  # GET /communicates
  # GET /communicates.json
  def index
    @communicates = Communicate.all
  end

  # GET /communicates/1
  # GET /communicates/1.json
  def show
  end

  # GET /communicates/new
  def new
    @communicate = Communicate.new
  end

  # GET /communicates/1/edit
  def edit
  end

  # POST /communicates
  # POST /communicates.json
  def create
    @communicate = Communicate.new(communicate_params)

    respond_to do |format|
      if @communicate.save
        format.html { redirect_to @communicate, notice: 'Communicate was successfully created.' }
        format.json { render :show, status: :created, location: @communicate }
      else
        format.html { render :new }
        format.json { render json: @communicate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /communicates/1
  # PATCH/PUT /communicates/1.json
  def update
    respond_to do |format|
      if @communicate.update(communicate_params)
        format.html { redirect_to @communicate, notice: 'Communicate was successfully updated.' }
        format.json { render :show, status: :ok, location: @communicate }
      else
        format.html { render :edit }
        format.json { render json: @communicate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /communicates/1
  # DELETE /communicates/1.json
  def destroy
    @communicate.destroy
    respond_to do |format|
      format.html { redirect_to communicates_url, notice: 'Communicate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_communicate
      @communicate = Communicate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def communicate_params
      params.fetch(:communicate, {})
    end
end

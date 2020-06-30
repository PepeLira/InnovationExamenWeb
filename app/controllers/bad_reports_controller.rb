class BadReportsController < ApplicationController
  before_action :set_bad_report, only: [:show, :edit, :update, :destroy]

  # GET /bad_reports
  # GET /bad_reports.json
  def index
    @bad_reports = BadReport.all
  end

  # GET /bad_reports/1
  # GET /bad_reports/1.json
  def show
  end

  # GET /bad_reports/new
  def new
    @bad_report = BadReport.new
  end

  # GET /bad_reports/1/edit
  def edit
  end

  # POST /bad_reports
  # POST /bad_reports.json
  def create
    @bad_report = BadReport.new(bad_report_params)

    respond_to do |format|
      if @bad_report.save
        format.html { redirect_to @bad_report, notice: 'Bad report was successfully created.' }
        format.json { render :show, status: :created, location: @bad_report }
      else
        format.html { render :new }
        format.json { render json: @bad_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bad_reports/1
  # PATCH/PUT /bad_reports/1.json
  def update
    respond_to do |format|
      if @bad_report.update(bad_report_params)
        format.html { redirect_to @bad_report, notice: 'Bad report was successfully updated.' }
        format.json { render :show, status: :ok, location: @bad_report }
      else
        format.html { render :edit }
        format.json { render json: @bad_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bad_reports/1
  # DELETE /bad_reports/1.json
  def destroy
    @bad_report.destroy
    respond_to do |format|
      format.html { redirect_to bad_reports_url, notice: 'Bad report was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bad_report
      @bad_report = BadReport.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def bad_report_params
      params.fetch(:bad_report, {})
    end
end

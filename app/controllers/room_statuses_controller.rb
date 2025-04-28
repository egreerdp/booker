class RoomStatusesController < ApplicationController
  before_action :set_room_status, only: %i[ show edit update destroy ]

  # GET /room_statuses or /room_statuses.json
  def index
    @room_statuses = RoomStatus.all
  end

  # GET /room_statuses/1 or /room_statuses/1.json
  def show
  end

  # GET /room_statuses/new
  def new
    @room_status = RoomStatus.new
  end

  # GET /room_statuses/1/edit
  def edit
  end

  # POST /room_statuses or /room_statuses.json
  def create
    @room_status = RoomStatus.new(room_status_params)

    respond_to do |format|
      if @room_status.save
        format.html { redirect_to @room_status, notice: "Room status was successfully created." }
        format.json { render :show, status: :created, location: @room_status }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @room_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_statuses/1 or /room_statuses/1.json
  def update
    respond_to do |format|
      if @room_status.update(room_status_params)
        format.html { redirect_to @room_status, notice: "Room status was successfully updated." }
        format.json { render :show, status: :ok, location: @room_status }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @room_status.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_statuses/1 or /room_statuses/1.json
  def destroy
    @room_status.destroy!

    respond_to do |format|
      format.html { redirect_to room_statuses_path, status: :see_other, notice: "Room status was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_status
      @room_status = RoomStatus.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def room_status_params
      params.fetch(:room_status, {})
    end
end

class AlbuminfosController < ApplicationController
  before_action :set_albuminfo, only: %i[ show edit update destroy ]

  # GET /albuminfos or /albuminfos.json
  def index
    @albuminfos = Albuminfo.all
  end

  # GET /albuminfos/1 or /albuminfos/1.json
  def show
  end

  # GET /albuminfos/new
  def new
    @albuminfo = Albuminfo.new
  end

  # GET /albuminfos/1/edit
  def edit
  end

  # POST /albuminfos or /albuminfos.json
  def create
    @albuminfo = Albuminfo.new(albuminfo_params)

    respond_to do |format|
      if @albuminfo.save
        format.html { redirect_to albuminfo_url(@albuminfo), notice: "Albuminfo was successfully created." }
        format.json { render :show, status: :created, location: @albuminfo }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @albuminfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /albuminfos/1 or /albuminfos/1.json
  def update
    respond_to do |format|
      if @albuminfo.update(albuminfo_params)
        format.html { redirect_to albuminfo_url(@albuminfo), notice: "Albuminfo was successfully updated." }
        format.json { render :show, status: :ok, location: @albuminfo }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @albuminfo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /albuminfos/1 or /albuminfos/1.json
  def destroy
    @albuminfo.destroy

    respond_to do |format|
      format.html { redirect_to albuminfos_url, notice: "Albuminfo was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_albuminfo
      @albuminfo = Albuminfo.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def albuminfo_params
      params.require(:albuminfo).permit(:title, :artists, :cover, :duration, :tracks, :release)
    end
end

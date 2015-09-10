class PublicationsController < ApplicationController
  load_and_authorize_resource
  before_action :set_publication, only: [:show, :edit, :update, :destroy, :assign]

  # GET /publications
  # GET /publications.json
  def index
    @publications = Publication.all
  end

  # GET /publications/1
  # GET /publications/1.json
  def show
  end

  # GET /publications/new
  def new
    @publication = Publication.new
  end

  # GET /publications/1/edit
  def edit
  end  

  def assign
  end

  def competitors
  end

  def myoffers
    @competitor = Competitor.new
  end

  # POST /publications
  # POST /publications.json
  def create
    @publication = Publication.new(publication_params)
    if admin_signed_in?
      @publication.user_id = 0
    else
      @publication.user_id = current_user.id
    end
    respond_to do |format|
      if @publication.save
        format.html { redirect_to @publication, notice: 'Se ha creado correctamente la publicacion.' }
        format.json { render :show, status: :created, location: @publication }
      else
        format.html { render :new }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /publications/1
  # PATCH/PUT /publications/1.json
  def update
    if params[:g] == "on"
      params[:publication][:service_ids] ||= []
      params[:publication][:truck_ids] ||= []
      params[:publication][:load_ids] ||= []
    end
    
    respond_to do |format|
      if @publication.update(publication_params)
        format.html { redirect_to @publication, notice: 'Se ha modificado correctamente la publicacion.' }
        format.json { render :show, status: :ok, location: @publication }
      else
        format.html { render :edit }
        format.json { render json: @publication.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /publications/1
  # DELETE /publications/1.json
  def destroy
    @publication.destroy
    respond_to do |format|
      format.html { redirect_to publications_url, notice: 'La publicacion ha sido eliminada correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_publication
      @publication = Publication.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def publication_params
      params.require(:publication).permit(:title, :day_pickup, :time_pickup, :day_delivery, :origin, :destiny, :time_delivery, :description, :estimated_price, :final_price, :status, :user_id, {:service_ids => []}, {:truck_ids => []}, {:load_ids => []}, {:user_ids => []})
    end

    def competitor_params
      params.require(:ompetitor).permit(:conform, :price, :users_id, :publications_id)
    end
end

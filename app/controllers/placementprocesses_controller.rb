class PlacementprocessesController < ApplicationController
  before_filter :authorise
  before_action :set_placementprocess, only: [:show, :edit, :update, :destroy]

  # GET /placementprocesses
  # GET /placementprocesses.json
  def index
    @placementprocesses = Placementprocess.all
  end

  # GET /placementprocesses/1
  # GET /placementprocesses/1.json
  def show
  end

  # GET /placementprocesses/new
  def new
    @placementprocess = Placementprocess.new
	
  end

  # GET /placementprocesses/1/edit
  def edit
  end

  # POST /placementprocesses
  # POST /placementprocesses.json
  def create
    @candidate = Candidate.find (params[:candidate_id])
	@placementprocess = @candidate.placementprocesses.create placementprocess_params
	@placementprocess.user_id = @current_user.id
	@placementprocess.save
    

    respond_to do |format|
      if @placementprocess.save
        format.html { redirect_to @candidate, notice: 'Placementprocess was successfully created.' }
        format.json { render :show, status: :created, location: @placementprocess }
      else
        format.html { render :new }
        format.json { render json: @placementprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /placementprocesses/1
  # PATCH/PUT /placementprocesses/1.json
  def update
    respond_to do |format|
      if @placementprocess.update(placementprocess_params)
        format.html { redirect_to @placementprocess, notice: 'Placementprocess was successfully updated.' }
        format.json { render :show, status: :ok, location: @placementprocess }
      else
        format.html { render :edit }
        format.json { render json: @placementprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /placementprocesses/1
  # DELETE /placementprocesses/1.json
  def destroy
    @placementprocess.destroy
    respond_to do |format|
      format.html { redirect_to placementprocesses_url, notice: 'Placementprocess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  
def invite
	@invite = Placementprocess.find(params[:id]) #najde order podle id z indexu
	Placementprocess.invite(@invite) #u toho co to naslo to udela model method shiporder s formal parametrem @order
	@invite.save
	respond_to do |format|
		format.html { redirect_to user_path(@current_user), notice: 'Candidate invited for a client interview.' }
	end
end

def offer
	@offer = Placementprocess.find(params[:id]) #najde order podle id z indexu
	Placementprocess.offer(@offer) #u toho co to naslo to udela model method shiporder s formal parametrem @order
	@offer.save
	respond_to do |format|
		format.html { redirect_to edit_placementprocess_path(@offer), notice: 'Candidate received offer.' }
	end
end

def accept
	@accept = Placementprocess.find(params[:id]) #najde order podle id z indexu
	Placementprocess.accept(@accept) #u toho co to naslo to udela model method shiporder s formal parametrem @order
	@accept.save
	respond_to do |format|
		format.html { redirect_to edit_placementprocess_path(@accept), notice: 'Candidate accepted offer.' }
	end
end

def start
	@start = Placementprocess.find(params[:id]) #najde order podle id z indexu
	Placementprocess.start(@start) #u toho co to naslo to udela model method shiporder s formal parametrem @order
	@start.save
	respond_to do |format|
		format.html { redirect_to user_path(@current_user), notice: 'Candidate started.' }
	end
end

def pay
	@pay = Placementprocess.find(params[:id]) #najde order podle id z indexu
	Placementprocess.pay(@pay) #u toho co to naslo to udela model method shiporder s formal parametrem @order
	@pay.save
	respond_to do |format|
		format.html { redirect_to user_path(@current_user), notice: 'Invoice paid.' }
	end
end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_placementprocess
      @placementprocess = Placementprocess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def placementprocess_params
      params.require(:placementprocess).permit(:candidate_id, :company_id, :position, :active, :presenteddate, :clientinterviewdate, :offerplaceddate, :offeredsalary, :offeredstart, :offeraccepteddate, :acceptedsalary, :acceptedstart, :starteddate, :paiddate, :processnotes)
    end
	
		
end

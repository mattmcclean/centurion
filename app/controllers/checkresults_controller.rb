class CheckresultsController < ApplicationController
  # GET /checkresults
  # GET /checkresults.json
  def index
    @checkresults = Checkresult.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @checkresults }
    end
  end

  # GET /checkresults/1
  # GET /checkresults/1.json
  def show
    @checkresult = Checkresult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @checkresult }
    end
  end

  # GET /checkresults/new
  # GET /checkresults/new.json
  def new
    @checkresult = Checkresult.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @checkresult }
    end
  end

  # GET /checkresults/1/edit
  def edit
    @checkresult = Checkresult.find(params[:id])
  end

  # POST /checkresults
  # POST /checkresults.json
  def create
    @checkresult = Checkresult.new(params[:checkresult])

    respond_to do |format|
      if @checkresult.save
        format.html { redirect_to @checkresult, notice: 'Checkresult was successfully created.' }
        format.json { render json: @checkresult, status: :created, location: @checkresult }
      else
        format.html { render action: "new" }
        format.json { render json: @checkresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /checkresults/1
  # PUT /checkresults/1.json
  def update
    @checkresult = Checkresult.find(params[:id])

    respond_to do |format|
      if @checkresult.update_attributes(params[:checkresult])
        format.html { redirect_to @checkresult, notice: 'Checkresult was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @checkresult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /checkresults/1
  # DELETE /checkresults/1.json
  def destroy
    @checkresult = Checkresult.find(params[:id])
    @checkresult.destroy

    respond_to do |format|
      format.html { redirect_to checkresults_url }
      format.json { head :no_content }
    end
  end
end

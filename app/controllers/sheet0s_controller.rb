class Sheet0sController < ApplicationController
  # GET /sheet0s
  # GET /sheet0s.json
  def index
    @sheet0s = Sheet0.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @sheet0s }
    end
  end

  # GET /sheet0s/1
  # GET /sheet0s/1.json
  def show
    @sheet0 = Sheet0.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @sheet0 }
    end
  end

  # GET /sheet0s/new
  # GET /sheet0s/new.json
  def new
    @sheet0 = Sheet0.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @sheet0 }
    end
  end

  # GET /sheet0s/1/edit
  def edit
    @sheet0 = Sheet0.find(params[:id])
  end

  # POST /sheet0s
  # POST /sheet0s.json
  def create
    @sheet0 = Sheet0.new(params[:sheet0])

    respond_to do |format|
      if @sheet0.save
        format.html { redirect_to @sheet0, notice: 'Sheet0 was successfully created.' }
        format.json { render json: @sheet0, status: :created, location: @sheet0 }
      else
        format.html { render action: "new" }
        format.json { render json: @sheet0.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /sheet0s/1
  # PUT /sheet0s/1.json
  def update
    @sheet0 = Sheet0.find(params[:id])

    respond_to do |format|
      if @sheet0.update_attributes(params[:sheet0])
        format.html { redirect_to @sheet0, notice: 'Sheet0 was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @sheet0.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sheet0s/1
  # DELETE /sheet0s/1.json
  def destroy
    @sheet0 = Sheet0.find(params[:id])
    @sheet0.destroy

    respond_to do |format|
      format.html { redirect_to sheet0s_url }
      format.json { head :ok }
    end
  end
end

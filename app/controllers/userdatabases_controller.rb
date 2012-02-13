class UserdatabasesController < ApplicationController
  # GET /userdatabases
  # GET /userdatabases.json
  def index
    @userdatabases = Userdatabase.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userdatabases }
    end
  end

  # GET /userdatabases/1
  # GET /userdatabases/1.json
  def show
    @userdatabase = Userdatabase.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userdatabase }
    end
  end

  # GET /userdatabases/new
  # GET /userdatabases/new.json
  def new
    @userdatabase = Userdatabase.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userdatabase }
    end
  end

  # GET /userdatabases/1/edit
  def edit
    @userdatabase = Userdatabase.find(params[:id])
  end

  # POST /userdatabases
  # POST /userdatabases.json
  def create
    @userdatabase = Userdatabase.new(params[:userdatabase])

    respond_to do |format|
      if @userdatabase.save
        format.html { redirect_to @userdatabase, notice: 'Userdatabase was successfully created.' }
        format.json { render json: @userdatabase, status: :created, location: @userdatabase }
      else
        format.html { render action: "new" }
        format.json { render json: @userdatabase.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userdatabases/1
  # PUT /userdatabases/1.json
  def update
    @userdatabase = Userdatabase.find(params[:id])

    respond_to do |format|
      if @userdatabase.update_attributes(params[:userdatabase])
        format.html { redirect_to @userdatabase, notice: 'Userdatabase was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @userdatabase.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userdatabases/1
  # DELETE /userdatabases/1.json
  def destroy
    @userdatabase = Userdatabase.find(params[:id])
    @userdatabase.destroy

    respond_to do |format|
      format.html { redirect_to userdatabases_url }
      format.json { head :ok }
    end
  end
end

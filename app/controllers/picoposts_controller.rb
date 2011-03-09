class PicopostsController < ApplicationController
  # GET /picoposts
  # GET /picoposts.xml
  def index
    @picoposts = Picopost.all

  end

  # GET /picoposts/1
  # GET /picoposts/1.xml
  def show
    @picopost = Picopost.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @picopost }
    end
  end

  # GET /picoposts/new
  # GET /picoposts/new.xml
  def new
    @picopost = Picopost.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @picopost }
    end
  end

  # GET /picoposts/1/edit
  def edit
    @picopost = Picopost.find(params[:id])
  end

  # POST /picoposts
  # POST /picoposts.xml
  def create
    @picopost = Picopost.new(params[:picopost])

    respond_to do |format|
      if @picopost.save
        format.html { redirect_to(@picopost, :notice => 'Picopost was successfully created.') }
        format.xml  { render :xml => @picopost, :status => :created, :location => @picopost }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @picopost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /picoposts/1
  # PUT /picoposts/1.xml
  def update
    @picopost = Picopost.find(params[:id])

    respond_to do |format|
      if @picopost.update_attributes(params[:picopost])
        format.html { redirect_to(@picopost, :notice => 'Picopost was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @picopost.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /picoposts/1
  # DELETE /picoposts/1.xml
  def destroy
    @picopost = Picopost.find(params[:id])
    @picopost.destroy

    respond_to do |format|
      format.html { redirect_to(picoposts_url) }
      format.xml  { head :ok }
    end
  end
end

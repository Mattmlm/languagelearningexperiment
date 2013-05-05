class IterativeChainsController < ApplicationController
  # GET /iterative_chains
  # GET /iterative_chains.json
  def index
    @iterative_chains = IterativeChain.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @iterative_chains }
    end
  end

  # GET /iterative_chains/1
  # GET /iterative_chains/1.json
  def show
    @iterative_chain = IterativeChain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @iterative_chain }
    end
  end

  # GET /iterative_chains/new
  # GET /iterative_chains/new.json
  def new
    @iterative_chain = IterativeChain.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @iterative_chain }
    end
  end

  # GET /iterative_chains/1/edit
  def edit
    @iterative_chain = IterativeChain.find(params[:id])
  end

  # POST /iterative_chains
  # POST /iterative_chains.json
  def create
    @iterative_chain = IterativeChain.new(params[:iterative_chain])

    respond_to do |format|
      if @iterative_chain.save
        format.html { redirect_to @iterative_chain, notice: 'Iterative chain was successfully created.' }
        format.json { render json: @iterative_chain, status: :created, location: @iterative_chain }
      else
        format.html { render action: "new" }
        format.json { render json: @iterative_chain.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /iterative_chains/1
  # PUT /iterative_chains/1.json
  def update
    @iterative_chain = IterativeChain.find(params[:id])

    respond_to do |format|
      if @iterative_chain.update_attributes(params[:iterative_chain])
        format.html { redirect_to @iterative_chain, notice: 'Iterative chain was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @iterative_chain.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /iterative_chains/1
  # DELETE /iterative_chains/1.json
  def destroy
    @iterative_chain = IterativeChain.find(params[:id])
    @iterative_chain.destroy

    respond_to do |format|
      format.html { redirect_to iterative_chains_url }
      format.json { head :no_content }
    end
  end
  
  def start
    # respond_to do |format|
    #   format.html { redirect_to iterative_chains_url }
    #   format.json { head :no_content }
    # end
  end
end

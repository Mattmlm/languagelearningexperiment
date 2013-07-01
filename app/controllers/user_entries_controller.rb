class UserEntriesController < ApplicationController
  # GET /user_entries
  # GET /user_entries.json
  def index
    @user_entries = UserEntry.all
  end
  
  def start
  end
  
  def pair_with_chain
    @iterative_chains = IterativeChain.all
    
    # Find unlocked chains
    @unlocked = @iterative_chains.select { |chain| chain[:locked] == false }
    @chain_id = -1
    
    # Pick the shortest chain
    if @unlocked.empty? != false
      min = @unlocked[0].user_entries.length
      @chain_id = @unlocked[0].id
      
      @unlocked.each_with_index { |chain, index|
        if chain.user_entries.length < min
          min = chain.user_entries.length
          @chain_id = chain.id
        end
      }
    end
    
    # All chains are locked
    if @chain_id == -1
      
    # Shortest unlocked chain has been selected
    # Set a session and lock the chain
    else
      
    end
    
  end
  
  def start_training
  end

  # GET /user_entries/1
  # GET /user_entries/1.json
  def show
    @user_entry = UserEntry.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @user_entry }
    end
  end

  # GET /user_entries/new
  # GET /user_entries/new.json
  def new
    @user_entry = UserEntry.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user_entry }
    end
  end

  # GET /user_entries/1/edit
  def edit
    @user_entry = UserEntry.find(params[:id])
  end

  # POST /user_entries
  # POST /user_entries.json
  def create
    @user_entry = UserEntry.new(params[:user_entry])

    respond_to do |format|
      if @user_entry.save
        format.html { redirect_to @user_entry, notice: 'User entry was successfully created.' }
        format.json { render json: @user_entry, status: :created, location: @user_entry }
      else
        format.html { render action: "new" }
        format.json { render json: @user_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /user_entries/1
  # PUT /user_entries/1.json
  def update
    @user_entry = UserEntry.find(params[:id])

    respond_to do |format|
      if @user_entry.update_attributes(params[:user_entry])
        format.html { redirect_to @user_entry, notice: 'User entry was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @user_entry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_entries/1
  # DELETE /user_entries/1.json
  def destroy
    @user_entry = UserEntry.find(params[:id])
    @user_entry.destroy

    respond_to do |format|
      format.html { redirect_to user_entries_url }
      format.json { head :no_content }
    end
  end
  
  # GET Training /user_entries/training
  # GET Training /iterative_chains/:iterative_chain_id/user_entries/training
  def training
    @iterative_chain = IterativeChain.find(params[:iterative_chain_id])
    @user_entry = @iterative_chain.user_entries.last
    @stimuli = @user_entry.pairs
  end
  
  # GET Testing /user_entries/testing
  # GET Testing /iterative_chains/:iterative_chain_id/user_entries/testing
  def testing
    @iterative_chain = IterativeChain.find(params[:iterative_chain_id])
    @last_user_entry = @iterative_chain.user_entries.last
    
    @phones = []
    @sems = []
    # Randomly sort the pairs of stimuli
    @last_user_entry.pairs.each do |pair|
      @phones = @phones.push(pair[:sound])
      @sems = @sems.push(pair[:image])
    end
    @phones = @phones.shuffle
    @sems = @sems.shuffle
    
    @phone_to_sem = false
    if (@iterative_chain.user_entries.size % 2) == 0
      @phone_to_sem = true
    end

    # respond_to do |format|
    #   format.html # new.html.erb
    #   format.json { render json: @user_entry }
    # end
  end
  
  # POST Testing /user_entries/testing
  # POST Testing /iterative_chains/:iterative_chain_id/user_entries/testing
  def record
    # respond_to do |format|
    #   if @user_entry.save
    #     format.html { redirect_to @user_entry, notice: 'User entry was successfully created.' }
    #     format.json { render json: @user_entry, status: :created, location: @user_entry }
    #   else
    #     format.html { render action: "new" }
    #     format.json { render json: @user_entry.errors, status: :unprocessable_entity }
    #   end
    # end
  end
  
end
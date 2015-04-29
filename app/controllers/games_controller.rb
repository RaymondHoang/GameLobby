class GamesController < ApplicationController
  before_action :set_game, only: [:show, :edit, :update, :destroy]

  # GET /games
  # GET /games.json
  def index
    @games = Game.all
  end

  # GET /games/1
  # GET /games/1.json
  def show
  @ftm_game = load_game(Orig, (@game.instance? ? @game.instance : nil))
    unless @game.instance == @ftm_game::__id__
      @game.update_attribute(:instance, @ftm_game::__id__)
    end
  end

  # GET /games/new
  def new
    @game = Game.new
  end
  
  def new2
    @game2 = Game.new
  end
  # GET /games/1/edit
  def edit
  end
  # GET /games/choose
  def choose
  end
  # POST /games
  # POST /games.json
  def create
    @game = Game.new(game_params)

    respond_to do |format|
      if @game.save
        format.html { redirect_to @game, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game }
      else
        format.html { render :new }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end
  def create2
    @game2 = Game.new(game_params2)

    respond_to do |format|
      if @game2.save
        format.html { redirect_to @game2, notice: 'Game was successfully created.' }
        format.json { render :show, status: :created, location: @game2 }
      else
        format.html { render :new2 }
        format.json { render json: @game2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /games/1
  # PATCH/PUT /games/1.json
  def update
    respond_to do |format|
      if @game.update(game_params)
        format.html { redirect_to @game, notice: 'Game was successfully updated.' }
        format.json { render :show, status: :ok, location: @game }
      else
        format.html { render :edit }
        format.json { render json: @game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /games/1
  # DELETE /games/1.json
  def destroy
    @game.destroy
     
    @ftm_game = nil
    ObjectSpace.garbage_collect
    respond_to do |format|
      format.html { redirect_to games_url, notice: 'Game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game
      @game = Game.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_params
      params.require(:game).permit(:room, :max_players, :kind, :instance)
    end
    
    def game_params2
      params.require(:game2).permit(:room, :max_players, :kind, :instance, :password)
    end
end
class NottodosController < ApplicationController
  before_action :set_nottodo, only: [:show, :edit, :update, :destroy]
  @@champ_arr=["겐지","맥크리","파라","리퍼","솔져:76","솜브라","트레이서","바스티온","한조","정크랫","메이","토르비욘","위도우메이커","D.VA","오리사","라인하르트","로드호그","윈스턴","자리야","아나","루시우","메르시","시메트라","젠야타"]

  # GET /nottodos
  # GET /nottodos.json
  def index
    @nottodos = Nottodo.all
  end

  # GET /nottodos/1
  # GET /nottodos/1.json
  def show
  end

  # GET /nottodos/new
  def new
    @nottodo = Nottodo.new
  end

  # GET /nottodos/1/edit
  def edit
  end

  # nottodo /nottodos
  # nottodo /nottodos.json
  def create
    @nottodo = Nottodo.new(nottodo_params)
    @nottodo.champion = @@champ_arr.sample

    respond_to do |format|
      if @nottodo.save
        format.html { redirect_to @nottodo, notice: 'nottodo was successfully created.' }
        format.json { render :show, status: :created, location: @nottodo }
      else
        format.html { render :new }
        format.json { render json: @nottodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nottodos/1
  # PATCH/PUT /nottodos/1.json
  def update
    respond_to do |format|
      if @nottodo.update(nottodo_params)
        format.html { redirect_to @nottodo, notice: 'nottodo was successfully updated.' }
        format.json { render :show, status: :ok, location: @nottodo }
      else
        format.html { render :edit }
        format.json { render json: @nottodo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nottodos/1
  # DELETE /nottodos/1.json
  def destroy
    @nottodo.destroy
    respond_to do |format|
      format.html { redirect_to nottodos_url, notice: 'nottodo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nottodo
      @nottodo = Nottodo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nottodo_params
      params.require(:nottodo).permit(:name, :champion)
    end
end

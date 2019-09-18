class TestClassesController < ApplicationController
  before_action :set_test_class, only: [:show, :edit, :update, :destroy]

  # GET /test_classes
  # GET /test_classes.json
  def index
    @test_classes = TestClass.all
  end

  # GET /test_classes/1
  # GET /test_classes/1.json
  def show
  end

  # GET /test_classes/new
  def new
    @test_class = TestClass.new
  end

  # GET /test_classes/1/edit
  def edit
  end

  # POST /test_classes
  # POST /test_classes.json
  def create
    @test_class = TestClass.new(test_class_params)

    respond_to do |format|
      if @test_class.save
        format.html { redirect_to @test_class, notice: 'Test class was successfully created.' }
        format.json { render :show, status: :created, location: @test_class }
      else
        format.html { render :new }
        format.json { render json: @test_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_classes/1
  # PATCH/PUT /test_classes/1.json
  def update
    respond_to do |format|
      if @test_class.update(test_class_params)
        format.html { redirect_to @test_class, notice: 'Test class was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_class }
      else
        format.html { render :edit }
        format.json { render json: @test_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_classes/1
  # DELETE /test_classes/1.json
  def destroy
    @test_class.destroy
    respond_to do |format|
      format.html { redirect_to test_classes_url, notice: 'Test class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_class
      @test_class = TestClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_class_params
      params.require(:test_class).permit(:startDate, :myBool, :myFloat)
    end
end

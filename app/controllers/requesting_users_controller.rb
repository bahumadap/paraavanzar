class RequestingUsersController < ApplicationController
  before_action :set_requesting_user, only: %i[ show edit update destroy ]

  # GET /requesting_users or /requesting_users.json
  def index
    @requesting_users = RequestingUser.all
  end

  # GET /requesting_users/1 or /requesting_users/1.json
  def show
  end

  # GET /requesting_users/new
  def new
    @requesting_user = RequestingUser.new
  end

  # GET /requesting_users/1/edit
  def edit
  end

  # POST /requesting_users or /requesting_users.json
  def create
    @requesting_user = RequestingUser.new(requesting_user_params)

    respond_to do |format|
      if @requesting_user.save
        format.html { redirect_to requesting_user_url(@requesting_user), notice: "Requesting user was successfully created." }
        format.json { render :show, status: :created, location: @requesting_user }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @requesting_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /requesting_users/1 or /requesting_users/1.json
  def update
    respond_to do |format|
      if @requesting_user.update(requesting_user_params)
        format.html { redirect_to requesting_user_url(@requesting_user), notice: "Requesting user was successfully updated." }
        format.json { render :show, status: :ok, location: @requesting_user }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @requesting_user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /requesting_users/1 or /requesting_users/1.json
  def destroy
    @requesting_user.destroy

    respond_to do |format|
      format.html { redirect_to requesting_users_url, notice: "Requesting user was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_requesting_user
      @requesting_user = RequestingUser.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def requesting_user_params
      params.require(:requesting_user).permit(:requesting_email, :user_id)
    end
end

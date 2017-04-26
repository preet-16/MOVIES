class MoviesController < ApplicationController
  before_action :set_movie, only: [:show, :edit, :update, :destroy]

  # GET /movies
  # GET /movies.json
  def index
    @movies = Movie.all
  end

  # GET /movies/1
  # GET /movies/1.json
  def show
       @reviews = Review.where(movie_id:@movie.id)
         end

  # GET /movies/new
  def new
    @movie = current_user.movies.build
  end

  # GET /movies/1/edit
  def edit
  end

  # POST /movies
  # POST /movies.json
  def create
    @movie =current_user.movies.build(movie_params)

    respond_to do |format|
      if @movie.save
        format.html { redirect_to @movie, notice: 'Movie was successfully created.' }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /movies/1
  # PATCH/PUT /movies/1.json
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to @movie, notice: 'Movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /movies/1
  # DELETE /movies/1.json
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: 'Movie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
def pages_tasks
  end
  def pages_calendar
  end
  def mailbox_compose
  end
   def mailbox_message
  end
  def mailbox_inbox
  end
   def pages_timeline_simple
  end
  def pages_timeline
  end
  def pages_address_book
  end
   def pages_edit_profile
  end
  def pages_invoice
  end
  def themeindex
  end
  def alerts_popups
  end
def table_basic
end
def table_datatables
  end
  def table_export
  end
  def pages_messages
  end
def pages_profile
end
def pages_gallery
  end
  def content_table
  end
  def pages_faq
  end
  def pages_search
  end
  def blog_list
  end
   def blog_post
  end
  def lockscreen
  end
  def pages_login
  end
  def login_v2
  end
  def login_inside
  end
  def login_website
  end
  def login_websitelight
  end
  def registration
 end
 def registration_login
 end
 def forgot_password
 end
 def error_404
 end
 def error_4042
 end
 def error_500
 end
 def boxed
 end
 def nav_toggled
 end
def nav_toggledhover
end
def nav_toggleditemhover
  end
  def nav_top
  end
  def nav_right
  end
  def nav_topfixed
  end
  def nav_custom
  end
  def frame_left
  end
  def search_left
  end
  def page_sidebar
  end
  def page_loading
  end
  def rtl
  end
  def tabbed
  end
  def custom_header
  end
  def adaptive_panels
  end
  def blank
  end
 def widgets
 end
 def elements
 end
 def buttons
 end
 def panels
 end
 def icons
 end
 def typography
 end
 def portlet
 end
 def sliders
 end
 def lists
 end
 def tour
 end
 def nestable
 end
 def autocomplete
 end
 def slide_menu
 end
 def one_column
 end
 def two_column
 end
 def form_tabbed
 end
 def seperated
 end
 def form_elements
 end
 def form_validation
 end
 def form_wizards
 end
def form_editors
 end
 def form_filehandling
 end
 def charts_morris
 end







  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie
      @movie = Movie.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def movie_params
      params.require(:movie).permit(:title, :description,:image)
    end
end

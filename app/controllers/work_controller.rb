class WorkController < ApplicationController
  include WorkImage

  def index
    @images_count = Image.all.count
    @selected_theme = "Select theme to leave your answer"
    #@selected_theme = t('.def_select_theme')
    @selected_image_name = 'dog-1'
    @values_qty = Value.all.count
    @current_locale = I18n.locale
    @themes = Theme.all.pluck(:name)

    session[:selected_theme_id] = @selected_theme # to display nothing
  end

  def choose_theme
    @themes = Theme.all.pluck(:name)
    logger.info "In WorkController#choose_theme @themes = #{@themes}"
    respond_to :js
  end


  # @note: first display_theme and show first image from image array
  def display_theme
    logger.info "In work#display_theme"
    @image_data = {}
    I18n.locale = session[:current_locale]

    #ToDo: Remove Once Authentication done
    #current_user_id = current_user.id
    current_user_id = 1

    if params[:theme] == "-----" #.blank?
      theme = "Select theme to leave your answer"
      theme_id = 1
      values_qty = Value.all.count.round
      data = { index: 0, name: 'dog-1', values_qty: values_qty,
               file: 'dog-1.jpg', image_id: 6,
               current_user_id: current_user_id, user_valued: false,
               common_ave_value: 0, value: 0 }
    else
      theme = params[:theme]
      theme_id = Theme.find_theme_id(theme)
      data = show_image(theme_id, 0)
    end
    session[:selected_theme_id] = theme_id

    image_data(theme, data)
  end
  skip_before_action :verify_authenticity_token
end

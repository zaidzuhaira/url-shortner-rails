# frozen_string_literal: true

class UrlsController < ApplicationController
  before_action :set_browser, only: :visit

  def index
    # recent 10 short urls
    @url = Url.new
    @urls = Url.order(created_at: :desc).limit(10)
  end

  def create
    original_url = params[:url][:original_url]

    begin
      url = Url.new
      url.original_url = original_url
      url.short_url = Url.generate_short_url
      url.save!
      flash[:notice] = "Your short link generated successfully"
    rescue ActiveRecord::RecordInvalid => e
      flash[:notice] = e.message
    end

    redirect_to root_path
  end

  def show
    short_url = params[:url]
    @url = Url.find_by_short_url short_url

    # implement queries
    daily_clicks = @url.click.current_month.group('DATE(created_at)').count
    @daily_clicks = daily_clicks.transform_keys { |date| date.to_date.day }.to_a

    @browsers_clicks = @url.click.group(:browser).count.to_a
    @platform_clicks = @url.click.group(:platform).count.to_a
  end

  def visit
    short_url = params[:short_url]
    @url = Url.find_by_short_url short_url
    if @url
      @url.click.create(browser: @browser.name, platform: @browser.platform.name)
      @url.update(clicks_count: @url.clicks_count + 1)
      redirect_to @url.original_url
    else
      render :file => "#{Rails.root}/public/404.html",  layout: false, status: :not_found
    end

  end

  private
  def set_browser
    @browser = Browser.new(request.headers['HTTP_USER_AGENT'])
  end

end

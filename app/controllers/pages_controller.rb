# frozen_string_literal: true

class PagesController < ApplicationController
  def main; end

  def shorten
    @url = Shortener::ShortenedUrl.generate(params[:url])
    redirect_to "/#{@url.unique_key}"
  end

  def result
    @url = Shortener::ShortenedUrl.find_by(unique_key: params[:id])
  end
end

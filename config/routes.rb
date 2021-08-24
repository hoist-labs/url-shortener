# frozen_string_literal: true

Rails.application.routes.draw do
  root "pages#main"
  get "/:id" => "shortener/shortened_urls#show"
end

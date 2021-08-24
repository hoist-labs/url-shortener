# frozen_string_literal: true

Rails.application.routes.draw do
  root "pages#main"

  constraints subdomain: "links" do
    get "/:id" => "shortener/shortened_urls#show"
  end

  post "/shortener", to: "pages#shorten"
  get  "/result/:id", to: "pages#result"
end

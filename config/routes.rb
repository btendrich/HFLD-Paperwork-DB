# frozen_string_literal: true

Rails.application.routes.draw do
  resources :shows
  resources :manufacturers
  resources :spot_cue_spotlights
  get 'spot_cues/matrix'
  resources :spot_cues
  resources :people
  resources :colors
  resources :spotlights
  resources :spotlight_positions
  resources :spotlight_models
  resources :color_frames

  get 'set_show/:id', to: 'welcome#set_show'

  get 'welcome/index'

  root 'welcome#index'
end

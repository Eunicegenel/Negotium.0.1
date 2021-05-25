class CategoriesController < ApplicationController
  skip_before_action :authorized, only: [:new, :create, :welcome]

  def index

  end
end

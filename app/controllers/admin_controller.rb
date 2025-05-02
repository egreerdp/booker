class AdminController < ActionController::Base
  http_basic_authenticate_with name: "dev", password: "secret"
end

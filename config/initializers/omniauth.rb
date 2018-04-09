OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '446982933113-i8m39esr9sv8g7kllls149khinlcvrm2.apps.googleusercontent.com', '5G5-d-iyiB24dCk7Y6obJDgU', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end
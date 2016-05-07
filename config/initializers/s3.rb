if Rails.env == "production"
  AWS.config(access_key_id: ENV["S3_KEY"], secret_access_key: ENV["S3_SECRET"])
  S3_BUCKET=ENV["S3_BUCKET"]
else
  config = YAML.load(File.read("config/s3.yml"))
  AWS.config(access_key_id: config["access_key_id"], secret_access_key: config["secret_access_key"])
  S3_BUCKET=config["bucket"]
end

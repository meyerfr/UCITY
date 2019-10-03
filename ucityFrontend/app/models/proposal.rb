class Proposal < ApplicationRecord
  mount_uploaders :pictures, PictureUploader
  # serialize :pictures, JSON # If you use SQLite, add this line.
  belongs_to :project
end

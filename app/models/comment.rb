class Comment < ApplicationRecord
  include VisibleStatus

  belongs_to :article
end

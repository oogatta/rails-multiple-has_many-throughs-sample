class UserUser < ApplicationRecord
  belongs_to :hoge, class_name: 'User'
  belongs_to :fuga, class_name: 'User'
end

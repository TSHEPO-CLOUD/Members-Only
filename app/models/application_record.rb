# https://gist.github.com/withoutwax/46a05861aa4750384df971b641170407
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end

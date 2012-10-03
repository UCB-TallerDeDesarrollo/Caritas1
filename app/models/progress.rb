# -*- encoding : utf-8 -*-
class Progress < ActiveRecord::Base
    belongs_to :workshop
    belongs_to :course
end

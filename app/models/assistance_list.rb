# -*- encoding : utf-8 -*-
class AssistanceList < ActiveRecord::Base
  has_one :volunteer
  belongs_to :course
end

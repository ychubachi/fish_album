# -*- coding: utf-8 -*-
require 'nkf'

class Family < ActiveRecord::Base
  include NKF
  has_many :fish

  before_validation do |family|
#    family.name_jp = nkf('-w --katakana', family.name_jp) if family.name_jp
#    family.name_jp = family.name_jp.tr('科','')
    family.name_en = family.name_en.capitalize
  end
end

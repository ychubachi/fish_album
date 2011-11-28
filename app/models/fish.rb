# -*- coding: utf-8 -*-
require 'nkf'

class Fish < ActiveRecord::Base
  include NKF

  belongs_to :family
  has_many :photo

  before_validation do |fish|
    logger.debug 'before_validation'
    fish.family_jp = nkf('-w --katakana', fish.family_jp)
    fish.family_jp = fish.family_jp.tr('科','')
    fish.name_jp = nkf('-w --katakana', fish.name_jp)
    fish.nickname_jp = nkf('-w --katakana', fish.nickname_jp)
    fish.family_en = fish.family_en.capitalize
    fish.name_en = fish.name_en.capitalize
    fish.name_la = fish.name_la.capitalize
  end
end

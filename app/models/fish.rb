# -*- coding: utf-8 -*-
require 'nkf'

class Fish < ActiveRecord::Base
  include NKF

  belongs_to :family
  has_many :photo
  belongs_to :thumb_photo, class_name: 'Photo'

  before_validation do |fish|
    fish.name_jp = nkf('-w --katakana', fish.name_jp) if fish.name_jp
    fish.nickname_jp = nkf('-w --katakana', fish.nickname_jp) if fish.nickname_jp
    fish.name_en = fish.name_en.capitalize
    fish.name_la = fish.name_la.capitalize
  end
end

class User < ApplicationRecord
  validates :title, presence: true,length: {maximum:20 }
  validates :startday, presence: true
  validates :endday, presence: true  
  validate :date_check
  validates :detail, length: {maximum:500 }


 def date_check
  if endday.present? && startday.present? &&startday > endday
  errors.add(:endday,"は開始日より前の日を設定することはできません。")   
 end
 end
end
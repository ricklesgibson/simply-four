require 'bcrypt'
class User < ActiveRecord::Base

  has_many :photos  

   has_attached_file :photo, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"

   has_attached_file :avatar, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>" }, 
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_secure_password
end

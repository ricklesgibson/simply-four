require 'bcrypt'
class User < ActiveRecord::Base

def to_s
  "This person's email is #{self.email}"
end
  has_secure_password
  has_many :photos  

   has_attached_file :photo, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>",
    :icon => "50x50>" }, 
    :default_url => "/images/:style/missing.png"

   has_attached_file :avatar, :styles => { 
    :medium => "300x300>", 
    :thumb => "100x100>",
    :icon => "50x50>" }, 
    :default_url => "/images/:style/missing.png"

  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  # TWO alternatives to validate presence of both handle and email:

    # validates :email, presence: true
    # validates :handle, presence: true

    #validates_presence_of :email, :handle

    #Now we want to have either handle or email, or both
    #But it can't have both email and handle blank


    #we can name our method whatever we chose, the def it.
    # validate :either_handle_or_email

    # def either_handle_or_email
    #   if (self.handle && self.handle.length > 0) || 
    #       (self.email && self.email.length > 0)
    #       return
    #   else
    #     self.errors.add(:email, "Must specify either handle or email")
    #     self.errors.add(:handle, "Must specify either handle or email")
    #   end
    # end

      # validates_format_of :email, with: /\A[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z/

      # validates :email, {uniqueness: << true, message: "E-mail already in use!"}, {format: {with: /\A[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z/}, message: "E-mail address should be in username@domain.com format"}

      # validates :email,   uniqueness: true
      # validates :email, {format: {with: /\A[a-z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\z/}}

      # validates_format_of :password, with: /\A(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s).{4,8}\z/, message: "Password expresion that requires one lower case letter, one upper case letter, one digit, 6-13 length, and no spaces."

  
end

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
<<<<<<< HEAD
  has_many :user_logs 
=======
  has_many :user_logs
  
  def status_with friend_id
    if friend = Friend.where(user_id: self.id, friend_id: friend_id).try(:first)
      if friend.accepted
        :be_accepted
      else
        :requested
      end
    elsif friend = Friend.where(user_id: friend_id, friend_id: self.id).try(:first)
      if friend.accepted
        :accepted
      else
        :be_requested
      end
    else
      :nothing
    end
  end
  
  def friends
    Friend.where("user_id = ? or friend_id = ?", self.id, self.id)
  end
  
>>>>>>> f9422a41bd3dc8a6b62b6958af41d67b0a7c9808
end

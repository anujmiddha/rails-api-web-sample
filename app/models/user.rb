# frozen_string_literal: true

## User class
class User < ApplicationRecord
  rolify
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  include DeviseTokenAuth::Concerns::User

  validates :name, presence: true
  validates :email, presence: true
  validates :encrypted_password, presence: true

  after_create :assign_default_role

  private

  def assign_default_role
    add_role(:new_user) if roles.blank?
  end
end

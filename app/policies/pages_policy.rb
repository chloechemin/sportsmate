class PagesPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    def resolve
      scope.where(user: user)
      scope.all
    end
  end

  def dashboard?
    true
  end

  def my_bookings?
    true
  end

  def my_activities?
    true
  end

end

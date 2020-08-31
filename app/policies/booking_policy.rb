class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
    # user_as_owner_or_admin?
  end

  def show?
    true
    # user_as_owner_or_admin?
  end

  def new?
    true
  	# user_as_owner_or_admin?
  end

  def create?
  	true
  end

  def destroy?
    true
    # user_as_owner_or_admin?
  end

  private

  # def user_as_owner_or_admin?
  #   user == record.user || user.admin?
  # end
end

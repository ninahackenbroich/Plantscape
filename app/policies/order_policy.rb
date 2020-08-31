class OrderPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def create?
    true
    # user_as_owner_or_admin?
  end

  def show?
    true
    # user_as_owner_or_admin?
  end
end

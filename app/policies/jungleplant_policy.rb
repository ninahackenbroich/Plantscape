class JungleplantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
 

  def new?
  	user_as_owner_or_admin?
  end

  def create?
  	user_as_owner_or_admin?
  end

  private

  def user_as_owner_or_admin?
    user == record.user
  end
end
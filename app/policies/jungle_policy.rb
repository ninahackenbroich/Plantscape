class JunglePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
 
  def index?
    true
  end

  def show?
    true
  end

  def new?
  	true
  end

  def create?
  	true
  end

  def destroy?
    user_as_owner_or_admin?
  end

  
  private

  def user_as_owner_or_admin?
    @user == record.user
  end
end

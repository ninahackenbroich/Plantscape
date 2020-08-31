class DashboardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  private

  # def user_as_owner_or_admin?
  #   user == record.user || user.admin?
  # end

end

class ChatroomPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  

  def show?
    record.customer_id == user.id || user.admin
    # user_as_owner_or_admin?
  end

end
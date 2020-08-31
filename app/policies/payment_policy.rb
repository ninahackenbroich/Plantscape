class PaymentPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
   def new?
    true
    # user_as_owner_or_admin?
  end
end

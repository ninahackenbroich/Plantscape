class BookingsPolicy < ApplicationPolicy
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
    true
  end
end

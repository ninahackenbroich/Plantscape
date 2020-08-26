class PlantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
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

  def edit?
  	true
  end


  def destroy?
  	true
  end

  def update?
    true
  end


end

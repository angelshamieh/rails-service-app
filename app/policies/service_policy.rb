class ServicePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end
  # by default new is calling create.
  def create?
    # anyone car add a service!
    true
  end

  def update?
    # its boolean - true or false no need for the whole condition
    true
  end

  def destroy?
    # user_is_owner?
  end

  private

  def user_is_owner?
    # record.user == user
  end
end

class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Food, published: true
    can :read, Recipe, published: true

    return unless user.present?

    can :manage, Recipe, user_id: user.id
    can :manage, Food, user_id: user.id
  end
end

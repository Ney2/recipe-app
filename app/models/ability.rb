class Ability
  include CanCan::Ability

  def initialize(user)
    can :read, Food, published: true
    can :read, Recipe, published: true

    return unless user.present?

    can %i[read create destroy], Food, user: user
    can %i[read create destroy], Recipe, user_id: user.id
  end
end

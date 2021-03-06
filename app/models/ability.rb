class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new

    if user.role? :admin
      can :manage, :all
    elsif user.role? :registered
      can :create, [Recipe, Ingredient, Quantity]
      can :read, :all
      # can :update, Recipe do |recipe|
      #   recipe.creator == user
      # end
     can :update, Recipe, creator_id: user.id
   #  can :destroy, all.self 
    else
      can :read, [Recipe, Category, Ingredient, Quantity]
    end

  end
  
end

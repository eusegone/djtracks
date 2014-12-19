class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.role? :admin
        can :manage, :all
      elsif user.persisted?
        can :read, User, id: user.id
        can :read, Track
        can :create, Track
        can :destroy, Track, user_id: user.id
        can :edit, Track, user_id: user.id
        can :create, Comment
        can :read, Comment

        can :read, Album
        can :create, Album
        can :destroy, Album, user_id: user.id
        can :edit, Album, user_id: user.id
    else
        can :read, :all
    end
  end
end

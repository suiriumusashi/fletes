class Ability
  include CanCan::Ability

  def initialize(user)
    # Define abilities for the passed in user here. For example:
    #
    #   user ||= User.new # guest user (not logged in)
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user 
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on. 
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/ryanb/cancan/wiki/Defining-Abilities

    # user ||= User.new
    #    if user.role == "cliente"
    #      can :create, Publication
    #      can [:read, :update, :destroy, :show], Publication, :user_id => user.id 
    #   end
    #    if user.role == "transportista"
    #     #can :manage, [:dashboard, :tool]
    #     can :read, Publication
    #    end

    # admin ||= Admin.new
    #    if admin.role == "super"
    #      can :service, :all
    #    end
    #    if admin.role == "job"
    #     #can :manage, [:dashboard, :tool]
    #     can :read, Publication
    #    end


    # if admin.is_a?(Admin)
    #   admin ||= Admin.new
    #   if admin.role == "super"
    #      can [:read, :update, :destroy, :show], Publication
    #   end
    #    if admin.role == "job"
    #     #can :manage, [:dashboard, :tool]
    #     can :read, Publication
    #    end
    # end
    # if user.is_a?(User)
    #   user ||= User.new
    #   if user.role == "cliente"
    #      can :create, Publication
    #      can [:read, :update, :destroy, :show], Publication, :user_id => user.id 
    #   end
    #    if user.role == "transportista"
    #     #can :manage, [:dashboard, :tool]
    #     can :read, Publication
    #    end
    # end

    # case model
    #   when Admin
    #     admin ||= Admin.new
    #      if admin.role == "super"
    #        can :service, :all
    #       #can :manage, [:dashboard, :tool]
    #       can :read, Publication
    #      end
    #   when User
    #     user ||= User.new
    #      if user.role == "cliente"
    #        can :create, Publication
    #        can [:read, :update, :destroy, :show], Publication, :user_id => user.id 
    #     else
    #       #can :manage, [:dashboard, :tool]
    #       can :read, Publication
    #      end
    #   else
    #     can :read, :all
    #   end

    user ||= User.new
      case user
        when User
          if user.role == "cliente"
           can :create, Publication
           can [:read, :update, :destroy, :show], Publication, :user_id => user.id 
          end
           if user.role == "transportista"
            #can :manage, [:dashboard, :tool]
            can :manage , Publication
           end
        when Admin
          if user.role == "super"
             can :manage, :all
          end
           if user.role == "job"
            #can :manage, [:dashboard, :tool]
            can :read, Publication
           end
    end
    
  end
end

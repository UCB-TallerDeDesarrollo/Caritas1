authorization do
  role :administrador do
    has_permission_on [:assistance_list, :beneficiary,
                      :beneficiary_types, :courses,
                      :courses_types, :donations,
                      :groups, :help_types, :helps,
                      :history_courses, :parishes,
                      :pastors, :social_cards, :users,
                      :vicarious, :volunteers,
                      :workshop_course_types, :workshops, 
                      :workshops_courses], 
                      :to => [:index, :show, :new, :edit, :create, :update, :destroy]
    has_permission_on [:beneficiary_helps], :to => [:index, :show, :new, :edit, :create, :update, :destroy, :report]
    has_permission_on [:main_page], :to => [:index, :info]
    has_permission_on [:notices], :to => [:index, :index_public, :show, :show_public, :new, :edit, :create, :update, :destroy]
    has_permission_on [:social_works], :to => [:index, :index_public, :show, :show_public, :new, :edit, :create, :update, :destroy, :add_photos, :show_photos, :destroy_all_photos]
    has_permission_on [:emailer], :to=>[:sendmail, :contact, :index, :contact_us, :sendmailContactUs]
    has_permission_on [:campaings], :to=>[:index, :index_public, :show, :show_public, :new, :edit, :create, :update, :destroy, :add_photos, :show_photos, :destroy_all_photos]
    has_permission_on [:user_sessions], :to=>[:new, :create, :destroy]
    has_permission_on [:volunteers], :to => [:index_users]
  end
  
  role :guest do
     has_permission_on [:main_page], :to => [:index, :info]
     has_permission_on [:emailer], :to=>[:sendmail, :contact, :index, :contact_us, :sendmailContactUs]
     has_permission_on [:notices], :to => [:index_public, :show_public]
     has_permission_on [:social_works], :to => [:index_public, :show_public]
     has_permission_on [:campaings], :to=>[:index_public, :show_public]
     has_permission_on [:user_sessions], :to=>[:new, :create, :destroy] 
  end
  
  role :parroco do
    includes :guest
    has_permission_on [:parishes], :to => [:index, :show]
  end
  
  role :voluntario do
    includes :guest
    has_permission_on [:groups], :to => [:index]
    has_permission_on :groups, :to => :show do
      if_attribute :volunteers => contains { Volunteer.find(user.controller_type) }
    end
  end
end
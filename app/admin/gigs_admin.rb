Trestle.resource(:gigs) do
  
  remove_action :new
  remove_action :destroy
  
  menu do
    item :gigs, icon: "fa fa-address-card"
  end


  table do
    column :title
    column :active
    column :user, -> (obj) { obj.user.full_name }
    #column :wallet, ->(gig) { gig.user&.wallet }
    column :created_at, align: :center
    actions do |toolbar, instance, admin|
      toolbar.link 'Deactivate', admin.path(:deactivate, id: instance.id), 
                     data: { method: :post, turbo_method: :post }, 
                     style: :danger
      toolbar.link 'Activate', admin.path(:activate, id: instance.id), 
                     data: { method: :post, turbo_method: :post }, 
                     style: :success
    end
  end

  controller do
    def activate
      gig = admin.find_instance(params)
      gig.update(active: true)

      flash[:message] = "Gig is activated"
      redirect_to admin.path(:show, id: gig)
    end

    def deactivate
      gig = admin.find_instance(params)
      gig.update(active: false)

      flash[:message] = "Gig is deactivated"
      redirect_to admin.path(:show, id: gig)
    end
  end

  routes do
    post :activate, on: :member
    post :deactivate, on: :member
  end


  form do |gig|
    text_field :title
    editor :description
    # В файле app/admin/gigs_admin.rb
    select :category_id, Category.all
  end

  search do |query|
    if query
      Gig.where("title ILIKE ?", "%#{query}%")
    else
      Gig.all
    end
  end

end

RailsAdmin.config do |config|


# Global Settings

  config.compact_show_view = false

# Individual Model Settings


  config.model AddOn do

    exclude_fields :id, :version

    parent Product

    edit do

      fields :order_lines do

        hide

      end

      fields :name, :description do
        column_width 400
      end

      fields :catalog, :product do
        column_width 300
      end

    end

  end

  config.model AdminRole do

    exclude_fields :id, :version

    parent User


    list do
      field :name do
        label 'Title'
         column_width 250
      end

      fields :has_mobile_access, :has_pc_access, :is_active do
        column_width  50
      end

      field :vendor do
        column_width 150
      end
    end

    edit do

      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

    end

  end

  config.model Catalog do

    exclude_fields :id, :version

    parent Vendor

    list do
      field :image do
         thumb_method :thumb
      end
    end


    edit do

      fields :sort_order do
        column_width 50

      end

      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

      field :image do

        thumb_method :thumb
        delete_method :delete_image

      end

    end

    show do
      field :image do
         thumb_method :thumb
      end
    end
  end

  config.model CustomerGroup do

    exclude_fields :id, :version

    parent User

    field :name do
      label "Title"
    end

    list do
      field :name do
        label 'Title'
      end
    end

    edit do

      fields :delivery_costs, :product_prices, :user_customer_groups do
        hide
      end

      fields :name, :description do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

    end

  end

  config.model DeliveryAddress do

    exclude_fields :id, :version

    navigation_label 'Delivery Management'

    weight 2

    list do
      field :shop_user_id do
        label "Shop User Id"
      end
    end

    edit do

      fields :name, :address_info, :city, :zip_code, :street_address01, :street_address02, :contact_phone do
        column_width 400
      end

      fields :state do
        column_width 300
      end

    end



  end

  config.model DeliveryCost do

    exclude_fields :id

    parent DeliveryAddress

    edit do

      fields :price do
        column_width 150
      end

      fields :vendor, :order_type, :customer_group, :service_region do
        column_width  300
      end
    end

  end

  config.model DeliveryLeadTime do

    exclude_fields :id, :version

    parent DeliveryAddress


    edit do
      fields :vendor, :location do
        column_width 300
      end
    end

  end

  config.model Location do

    exclude_fields :id, :version

    parent Vendor

    field :name_01 do
      label "Name 1"
    end

    field :street_address01 do
      label "Street Address 1"
    end

    field :street_address02 do
      label "Street Address 2"
    end



    list do

    end

    edit do

      fields :delivery_lead_times, :order_headers, :products, :product_prices do

        hide

      end

      fields :name, :name_01, :street_address01, :street_address02, :email_address do

        column_width 400

      end


      fields :phone, :fax, :api_code, :state, :vendor do
        column_width 300
      end

      fields :zip_code do
        column_width 100
      end

    end

  end

  config.model Navigation do

    exclude_fields :id, :version

    parent User

    edit do

      fields :role_navigations do
        hide
      end

      fields :name_menu, :name_header, :name_control  do
        column_width 400
      end

      fields :navigation do
        column_width 300
        label 'Parent'
      end
    end

  end

  config.model News do

    exclude_fields :id, :version

    parent Vendor

    edit do

      fields :headline, :newstext do
        column_width 400
      end

      fields :vendor, :customer_group do
        column_width 300
      end

    end

  end

  config.model OpeningHour do

    exclude_fields :id, :version

    parent Vendor

    edit do
      fields :opening_time do
        column_width 400
      end

      fields :location, :vendor do
        column_width 300
      end
    end

  end

  config.model OrderHeader do

    exclude_fields :id, :version

    navigation_label 'Orders Management'

    weight 1

    list do
      field :shop_user_id do
        label "Shop User Id"
      end
    end


    edit do
      fields :vendor, :location, :order_type, :order_state do
        column_width 300
      end
    end

  end

  config.model OrderLine do

    exclude_fields :id, :version

    parent OrderHeader

    edit do
      fields :add_on, :order_header do
        column_width 300
      end
    end

  end

  config.model OrderState do

    exclude_fields :id, :version

    parent OrderHeader

    edit do
      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end

      fields :sequence do

        column_width 50
      end
    end

  end

  config.model OrderType do

    exclude_fields :id, :version

    parent OrderHeader


    edit do
      fields :name do
        column_width 400
      end

      fields :vendor do
        column_width 300
      end
    end


  end

  config.model Product do

    exclude_fields :id, :version

    navigation_label 'Product Management'

    weight 3


    edit do

      fields :name, :catalog, :location, :vendor do
         column_width 400
      end

      fields :description_short, :description_long do
        column_width 400
      end

      field :image do
        thumb_method :thumb
        delete_method :delete_image
      end

    end

    show do
      field :image do
         thumb_method :thumb
      end

    end

  end

  config.model ProductPrice do

    exclude_fields :id

    parent Product


    edit do
      fields :special_offer_type, :location, :customer_group, :variant do
        column_width 300
      end
    end

  end

  config.model Role do

    exclude_fields :id, :version

    parent User

    field :name do
      label "Title"
    end

    list do
      field :name do
      end
    end

    edit do
      field :name do
        column_width 400
      end
    end

    show do
    end

  end

  config.model RoleNavigation do

    visible false

    exclude_fields :id, :version

    parent User

    edit do
      fields :navigation, :role do
        column_width 300
      end
    end

  end

  config.model Salutation do

    exclude_fields :id, :version

    parent User

    field :name do
      label "Title"
    end

    edit do
      fields :name do
        column_width 400
      end
    end

  end

  config.model ServiceRegion do

    visible false

    exclude_fields :id, :version

    parent Vendor

    edit do
      fields :location, :vendor do
        column_width 300
      end
    end

  end

  config.model ShopUser do

    exclude_fields :id, :version

    parent OrderHeader


    edit do

      fields :user_customer_groups do
        hide
      end

      fields :first_name, :last_name, :mobile_phone, :password do
        column_width 300
      end

      fields :email_address do
        column_width 400

      end

      fields :salutation do
        column_width 300
      end

    end

  end

  config.model SpecialOfferType do

    exclude_fields :id, :version

    parent Product

    edit do
      fields :name do
        column_width 400
      end

      fields :description do
        column_width 500
      end

      fields :vendor do
        column_width 300
      end

    end

  end

  config.model State do

    exclude_fields :id, :version

    parent User

    edit do
      field :name do
        column_width 400
      end
    end

    list do
      field :name do
        column_width 200
      end

      field :is_active do
        column_width 100
      end

    end

  end

  config.model Translation do

    exclude_fields :id, :version

    parent User

    list do
      field :shortcut do
        column_width 150
      end

      field :language_code do
        column_width 50
      end

      field :translation do
        column_width 350
      end
    end

    edit do
      fields :shortcut, :translation do
        column_width 400
      end

      fields :language_code do
        column_width 50
      end
    end

  end

  config.model User do

    navigation_label 'Administration'

    weight 5

  end

  config.model UserCustomerGroup do

      visible false

  end

  config.model Variant do

    exclude_fields :id, :version

    parent Product

    edit do

      fields :sort_order do
        column_width 50
      end

      fields :name do
        column_width 400
      end

      fields :description do
        column_width 500
      end

      fields :product, :catalog do
        column_width 300
      end

    end

  end

  config.model Vat do

    exclude_fields :id, :version

    parent Product

    edit do

      fields :delivery_costs do
        hide
      end

      fields :name do
        column_width 400
      end

      fields :order_type, :vendor do
        column_width 300
      end


    end

  end

  config.model Vendor do

    exclude_fields :id, :version

    navigation_label 'Vendor Management'

    weight 4

    field :street_address01 do
      label "Street Address 1"
    end

    field :street_address02 do
      label "Street Address 2"
    end


    edit do


      fields :customer_groups, :delivery_costs, :delivery_lead_times, :news, :opening_hours, :order_headers, :order_states, :products, :service_regions, :special_offer_types, :vats do
         hide
      end

      fields :name, :name_1, :name_2, :street_address01, :street_address02, :city, :email_address, :website do
        column_width 400
      end

      fields :phone, :fax do
        column_width 200
      end

      fields :zip_code do
        column_width 100
      end


    end

    show do

      group :admin do
        label "Administrator Roles"

        field :admin_roles do

          formatted_value do

            bindings[:view].render :partial => "show_admin_roles", :locals => {:field => bindings[:object].admin_roles}

          end
        end
      end

    end



  end

end
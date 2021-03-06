require "administrate/base_dashboard"

class UserDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    microposts: Field::HasMany,
    id: Field::Number,
    name: Field::String,
    email: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
    password_digest: Field::String,
    remember_digest: Field::String,
    admin: Field::Boolean,
    activation_digest: Field::String,
    activated: Field::Boolean,
    activated_at: Field::DateTime,
    reset_digest: Field::String,
    reset_sent_at: Field::DateTime,
  }

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :id,
    :name,
    :email,
    :admin,
    :microposts,
  ]

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :id,
    :name,
    :email,
    :created_at,
    :updated_at,
    :password_digest,
    :remember_digest,
    :admin,
    :activation_digest,
    :activated,
    :activated_at,
    :reset_digest,
    :reset_sent_at,
    :microposts,
  ]

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :name,
    :email,
    :password_digest,
    :remember_digest,
    :admin,
    :activation_digest,
    :activated,
    :activated_at,
    :reset_digest,
    :reset_sent_at,
    :microposts,
  ]

  # Overwrite this method to customize how users are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(user)
  #   "User ##{user.id}"
  # end
end

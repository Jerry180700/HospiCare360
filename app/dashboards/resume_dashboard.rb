require "administrate/base_dashboard"

class ResumeDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    birth_date: Field::Date,
    check_in: Field::Date,
    check_out: Field::Date,
    description: Field::Text,
    gender: Field::String,
    height: Field::Number.with_options(decimals: 2),
    nationality: Field::String,
    status: Field::Number,
    weight: Field::Number.with_options(decimals: 2),
    created_at: Field::DateTime,
    updated_at: Field::DateTime
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = %i[
    id
    birth_date
    check_in
    check_out
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    birth_date
    check_in
    check_out
    description
    gender
    height
    nationality
    weight
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    birth_date
    check_in
    check_out
    description
    gender
    height
    nationality
    weight
  ].freeze

  # COLLECTION_FILTERS
  # a hash that defines filters that can be used while searching via the search
  # field of the dashboard.
  #
  # For example to add an option to search for open resources by typing "open:"
  # in the search field:
  #
  #   COLLECTION_FILTERS = {
  #     open: ->(resources) { resources.where(open: true) }
  #   }.freeze
  COLLECTION_FILTERS = {}.freeze

  # Overwrite this method to customize how resumes are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(resume)
  #   "Resume ##{resume.id}"
  # end
  def display_resource(resume)
    "Resume ##{resume.id}"
  end
end

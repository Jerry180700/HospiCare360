require "administrate/base_dashboard"

class PatientDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    id: Field::Number,
    appointments: Field::HasMany,
    doctor_specialty: Field::HasOne,
    email: Field::String,
    password: Field::String,
    first_name: Field::String,
    last_name: Field::String,
    medical_resume: Field::HasOne,
    photo_attachment: Field::ActiveStorage,
    photo_blob: Field::ActiveStorage,
    remember_created_at: Field::DateTime,
    reset_password_sent_at: Field::DateTime,
    reset_password_token: Field::String,
    resume: Field::HasOne,
    specialty: Field::HasOne,
    statuses: Field::HasMany,
    surgeries: Field::HasMany,
    type: Field::String,
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
    appointments
    first_name
    last_name
    resume
    email
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  # Se borra medical resume
  SHOW_PAGE_ATTRIBUTES = %i[
    id
    appointments
    doctor_specialty
    email
    password
    first_name
    last_name
    photo_attachment
    photo_blob
    remember_created_at
    reset_password_sent_at
    reset_password_token
    resume
    specialty
    statuses
    surgeries
    type
    created_at
    updated_at
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = %i[
    first_name
    last_name
    email
    password
    medical_resume
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

  # Overwrite this method to customize how patients are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(patient)
  #   "Patient ##{patient.id}"
  # end
  def display_resource(patient)
    "#{patient.first_name} #{patient.last_name}"
  end
end

# frozen_string_literal: true

json.array! @acs_admins, partial: 'acs_admins/acs_admin', as: :acs_admin

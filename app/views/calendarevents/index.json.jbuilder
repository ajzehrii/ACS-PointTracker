# frozen_string_literal: true

json.array! @calendarevents, partial: 'calendarevents/calendarevent', as: :calendarevent

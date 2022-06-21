roles = %i[
  all_rights
  accomodation_manage
  accomodation_view
  booking_policies_manage
  booking_policies_view
  booking_rules_manage
  booking_rules_view
  cancel_group_block
  cancel_order
  catering_manage
  catering_view
  closures_manage
  closures_view
  distribution_lists_manage
  distribution_lists_view
  documents_manage
  documents_view
  ecommerce_setup_manage
  ecommerce_setup_view
  equipment_manage
  equipment_view
  financial_manage
  financial_view
  gifts_experiences_manage
  gifts_experiences_view
  hotel_departments_manage
  hotel_departments_view
  hotel_information_manage
  hotel_information_view
  meeting_space_manage
  meeting_space_view
  meetings_events_manage
  meetings_events_view
  offers_manage
  offers_view
  outlets_manage
  outlets_view
  packages_manage
  packages_view
  payments_manage
  payments_refund
  photos_manage
  photos_view
  policies_manage
  policies_view
  preferred_vendors_manage
  preferred_vendors_view
  promo_codes_manage
  promo_codes_view
  property_profile_manage
  property_profile_view
  rate_descriptions_manage
  rate_descriptions_view
  redeem_expired
  financial_setup_idem_manage
  financial_setup_idem_view
  room_blocks_supplier_manage
  room_blocks_supplier_view
  site_builder_manage
  sleeping_rooms_manage
  sleeping_rooms_view
  space_calendar_manage
  space_calendar_view
  undo_redemptions
  venue_manage
  venue_view
  voucher_portal_manage
  voucher_portal_view
]

roles.sort_by(&:to_s).each do |role|
  puts role
end

def create_rights(roles)
  roles.each do |role|
    # Right.create(name: role)
    print role
    puts
  end
end

# create_rights(roles)

def another_create_rights
  roles = {
    meetings_events_manage: :leads_manage,
    meetings_events_view: :leads_view
  }
  roles.each do |key, value|
    #   role = Role.find_by(code: key)
    #   right = Right.find_or_create_by(code: value)
    #   role.rights << right
    puts 'here is where we are '
    puts "#{key} #{value}"
  end
end

# another_create_rights

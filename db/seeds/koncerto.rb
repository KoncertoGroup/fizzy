create_tenant "Koncerto"

adam = find_or_create_user "Adam Meyer", "adam.meyer@koncerto.com.au"

login_as adam

create_board("Projects", access_to: []).tap do |projects|
  create_card("Setup development environment", description: "Configure the Fizzy development environment.", board: projects)

  create_card("Review documentation", description: "Go through the API and development docs.", board: projects).tap do |card|
    card.toggle_assignment(adam)
    if column = card.board&.columns&.sample
      card.triage_into(column)
    end
  end

  create_card("Test authentication flow", description: "Verify passwordless login works correctly.", board: projects).tap do |card|
    card.toggle_assignment(adam)
  end
end

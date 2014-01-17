user = User.create(
  username: "user",
  email: "user@example.com",
  password: "password",
  password_confirmation: "password"
)

mod = User.create(
  username: "mod",
  email: "mod@example.com",
  password: "password",
  password_confirmation: "password",
  moderator: true
)

admin = User.create(
  username: "admin",
  email: "admin@example.com",
  password: "password",
  password_confirmation: "password",
  admin: true
)

report_categories = ReportCategory.create([
  {
    name: 'Authentication', 
    description: 'Authentication is proving you are who you say you are and session management is the process of maintaining that trust once established. Most website and services require you to register your details and then log in to use the service, often using a username and password.',
    icon_url: 'icons/Buzz-Private-icon.png' 
  },
  {
    name: 'Data at Rest',
    description: 'Refers to inactive data which is stored physically in any digital form (e.g. harddisk, USB drive, CDs and DVDs etc.).',
    icon_url: 'icons/It-Infrastructure-Hdd-icon.png'
  },
  {
    name: 'Data in Motion',
    description: 'Lorem ipsum dolor sit amet, consectvestibulum. Curabitur malesuada magna dapibus sapien faucibus, et rhoncus ligula sodales. Nam nibh massa, elementum vitae tincidunt placerat, semper et dolor. Donec blandit ut enim eu bibendum. Vestibulum id tincidunt velit.',
    icon_url: 'icons/It-Infrastructure-Remote-working-icon.png'
  },
  {
    name: 'Privacy & EULA',
    description: 'sapien faucibus, et rhoncus ligula sodales. Nam nibh massa, elementum vitae tincidunt placerat, semper et dolor. Donec blandit ut enim eu bibendum. Vestibulum id tincidunt velit.',
    icon_url: 'icons/Buzz-Visible-icon.png'
  },
  {
    name: 'Disclosure',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem. Maecenas in metus iaculis, fermentum enim a, dapibus quam. Praesent magna ante, elementum eu aliquet vitae, dignissim et justo. Phasellus convallis ligula vel libero euismod vestibulum. Curabitur malesuada magna dapibus sapien faucibus, et rhoncus ligula sodales. Nam nibh massa, elementum vitae tincidunt placerat, semper et dolor. Donec blandit ut enim eu bibendum. Vestibulum id tincidunt velit.',
    icon_url: 'icons/Users-Talk-icon.png'
  },
  {
    name: 'Advertising',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem. Maecenas in metus iaculis, fermentum enim a, dapibus quam. Praesent magna ante, elementum eu aliquet vitae, dignissim et justo. Phasellus convallis ligula vel libero euismod vestibulum. Curabitur malesuada magna dapibus sapien faucibus, et rhoncus ligula sodales. Nam nibh massa, elementum vitae tincidunt placerat, semper et dolor. Donec blandit ut enim eu bibendum. Vestibulum id tincidunt velit.',
    icon_url: 'icons/Business-Money-bag-icon.png'
  },
  {
    name: 'Incident History',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem. Maecenas in metus iaculis, fermentum enim a, dapibus quam. Praesent magna ante, elementum eu aliquet vitae, dignissim et justo. Phasellus convallis ligula vel libero euismod vestibulum. Curabitur malesuada magna dapibus sapien faucibus, et rhoncus ligula sodales. Nam nibh massa, elementum vitae tincidunt placerat, semper et dolor. Donec blandit ut enim eu bibendum. Vestibulum id tincidunt velit.',
    icon_url: 'icons/Office-Stuff-Planner-icon.png'
  },
])

report_items = ReportItem.create([
  # Authentication & Session Maintenance
  { 
    report_category_id: report_categories[0].id, 
    name: 'Design and Documentation',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[0].id, 
    name: 'Authentication Mechanisms',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[0].id, 
    name: 'Password Policy',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[0].id, 
    name: 'Password reset methods',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[0].id, 
    name: 'Session Management',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[0].id, 
    name: 'Password Storage',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  # Data at Rest
  { 
    report_category_id: report_categories[1].id, 
    name: 'Design and Documentation',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[1].id, 
    name: 'Data Encryption',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[1].id, 
    name: 'Data Retention',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[1].id, 
    name: 'Data Scope',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  # Data in Motion
  { 
    report_category_id: report_categories[2].id, 
    name: 'Design and Documentation',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[2].id, 
    name: 'Transport Encryption',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[2].id, 
    name: 'SSL and TLS',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[2].id, 
    name: 'Qualys SSL Labs Report',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  # Privacy and EULA
  { 
    report_category_id: report_categories[3].id, 
    name: 'Privacy Policy',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[3].id, 
    name: 'End User Licence Agreement',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[3].id, 
    name: 'Sales and Marketing',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[3].id, 
    name: 'Third Parties',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[3].id, 
    name: 'Data Analytics',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  # Disclosure
  { 
    report_category_id: report_categories[4].id, 
    name: 'Bug Bounty Program',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[4].id, 
    name: 'Disclosure Policy',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  { 
    report_category_id: report_categories[4].id, 
    name: 'Disclosure History',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  # Advertising
  { 
    report_category_id: report_categories[5].id, 
    name: 'Adverts on site',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  # Incident History
  { 
    report_category_id: report_categories[6].id, 
    name: 'Public Disclosures',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
  {
    report_category_id: report_categories[6].id, 
    name: 'Recent Events',
    help: 'Curabitur malesuada magna dapibus sapien faucibus'
  },
])

report_choices = {}
points = [-20,-10,-5,0,5,10,20]
bonuses = [false,false,false,false,true]

report_items.each do |item|
  5.times do |i|
    choice = ReportChoice.create(
        report_item_id: item.id, 
        name: "Choice #{i} for item #{item.name}", 
        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem. Maecenas in metus iaculis, fermentum enim a",
        bonus: bonuses.shuffle.pop,
        points: points.shuffle.pop,
        help: 'Curabitur malesuada magna dapibus sapien faucibus'
    )
    if not report_choices.has_key? item.name
      report_choices[item.name] = []
    end

    report_choices[item.name].append choice
  end
end

services = []
20.times do |i|
  service = Service.create(
    name: "Test service #{i}",
    description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem. Maecenas in metus iaculis, fermentum enim a",
    screenshot_url: "_na.png",
    url: "http://google.com",
    country: "United Kingdom",
    hosting_provider: "Badger Inc",
    score: 0.0,
    score_updated_at: Time.at(0),
    user_id: user.id,
    moderated: [true,true,false].shuffle.pop
  )

  rand(20).times do |j|
    service.comments.create(:title => "comment #{j}", :comment => "orem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem.", :user_id => user.id)
  end

  services << service
end


services.each do |service|
  report_choices.each_pair do |item, choices|
    choice = choices.shuffle.pop
    Answer.create(
      service_id: service.id,
      report_choice_id: choice.id,
      selected: true,
      notes: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec ut lobortis eros, at faucibus sem. Maecenas in metus iaculis, fermentum enim a"
    )
  end
end

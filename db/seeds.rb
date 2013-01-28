def main
  create_roles
  create_users
  create_puffs
  create_blocks
  create_frames
end

def create_roles
  puts 'ROLES'
  YAML.load(ENV['ROLES']).each do |role|
    Role.mongo_session['roles'].insert({ :name => role })
    puts 'role: ' << role
  end
end

def create_users
  puts 'DEFAULT USERS'
  user = User.create! :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
  puts 'user: ' << user.name
  user.add_role :admin
end

def create_puffs
  Puff.create!(name: 'title', template: 'title')
  Puff.create!(name: 'title_and_image', template: 'title_and_image')
  Puff.create!(name: 'title_and_abstract', template: 'title_and_abstract')
  Puff.create!(name: 'title_image_and_abstract', template: 'title_image_and_abstract')
  Puff.create!(name: 'title_image_and_content', template: 'title_image_and_content')
end

def create_blocks
  Block.create!(name: 'top', puffs: Puff.where(name: 'title'))
  Block.create!(name: 'main', puffs: Puff.where(name: 'title_image_and_abstract'))
  Block.create!(name: 'four', puffs: [
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first
  ])
  Block.create!(name: 'three', puffs: [
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first
  ])
  Block.create!(name: 'one_big_and_two_small', template: 'one_big_and_two_small', puffs: [
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first,
    Puff.where(name: 'title_and_image').first
  ])
  Block.create!(name: 'article', puffs: [
    Puff.where(name: 'title_image_and_content').first
  ])
end

def create_frames
  frame = Frame.create!(name: 'mainframe', blocks: Block.all)
  puts frame
end

main

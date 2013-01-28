require 'pp'

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
  Block.create!(name: 'top', puff_names: %w(title))
  Block.create!(name: 'main', puff_names: %w(title_image_and_abstract))
  block = Block.create!(name: 'four', puff_names: %w(title_and_image
                        title_and_image title_and_image title_and_image ))

  block = Block.create!(name: 'three', puff_names: %w(title_and_image
                        title_and_image title_and_image ))
  pp block.puffs

  block = Block.create!(name: 'one_big_and_two_small', template: 'one_big_and_two_small',
                        puff_names: %w(title_and_image title_and_image title_and_image))
  Block.create!(name: 'article', puff_names: %w(title_image_and_content))
end

def create_frames
  frame = Frame.create!(name: 'mainframe', block_names: Block.all.map(&:name))
  puts frame
end

main

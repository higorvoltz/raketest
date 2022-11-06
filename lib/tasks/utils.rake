# frozen_string_literal: true

namespace :utils do
  desc 'popular a tabela users com 10 usuários'
  task setup_user_10: :environment do
    if Rails.env.development?
      10.times do |_i|
        user_name = Faker::Name.name
        email = Faker::Internet.email
        user = "#{user_name} - #{email}"
        puts "cadastrando #{user} "
        User.create(name: user_name, email:)
      end
    else
      puts 'vc não estão em ambiente de desenvolvimento!'
    end
  end

  desc 'popular a tabela users com 5 usuários'
  task setup_user_5: :environment do
    5.times do |_i|
      user_name = Faker::Name.name
      email = Faker::Internet.email
      user = "#{user_name} - #{email}"
      puts "cadastrando #{user} "
      User.create(name: user_name, email:)
    end
  end
end

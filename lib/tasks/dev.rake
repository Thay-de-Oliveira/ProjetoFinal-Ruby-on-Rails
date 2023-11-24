namespace :dev do
  desc "Configura o banco de dados do zero"
  task db_setup: :environment do
    if Rails.env.development?
      puts %x(rails db:drop:_unsafe)
      puts %x(rails db:create)
      puts %x(rails db:migrate)
      puts %x(rails db:seed)
    else
      puts "Ambiente de producao!"
    end
  end

end

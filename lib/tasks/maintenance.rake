namespace :maintenance do
  task maintenance: :environment do
    while true
      # Expiração automática de descontos sem pontos
      Project.where("expired=false and created_at < (now() - interval '48 hour')").update_all(expired: true)
      sleep 10
    end

  end
end

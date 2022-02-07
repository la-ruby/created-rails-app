Example.where(seed: true).destroy_all
10.times { FactoryBot.create(:example, seed: true) }

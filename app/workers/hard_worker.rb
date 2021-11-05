class HardWorker
  include Sidekiq::Worker

  def perform(article_id, duration=1)
    art = Article.find(article_id)
    now = Time.now
    art.viewed = now
    puts "updating article #{article_id} viewed to #{now}"
    art.save
    sleep duration
  end
end

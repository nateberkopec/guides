require 'app/workers/ping'

namespace :ping do
  task :once => :environment do
    pw = PingWorker.new
    pw.update
  end

  task :forever => :environment do
    pw = PingWorker.new
    while true
      pw.update
      sleep 60
    end
  end
end



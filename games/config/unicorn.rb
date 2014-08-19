# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/rails/Agnok/games"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/rails/Agnok/games/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/rails/Agnok/games/log/unicorn.log"
stdout_path "/var/www/rails/Agnok/games/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.games.sock"
# listen "/tmp/unicorn.games.sock"

# Number of processes
# worker_processes 4
worker_processes 1

# Time-out
timeout 60

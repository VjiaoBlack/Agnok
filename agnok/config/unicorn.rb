# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/rails/Agnok/agnok"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/rails/Agnok/agnok/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/rails/Agnok/agnok/log/unicorn.log"
stdout_path "/var/www/rails/Agnok/agnok/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.agnok.sock"
listen "/tmp/unicorn.agnok.sock"

# Number of processes
# worker_processes 4
worker_processes 2

# Time-out
timeout 30

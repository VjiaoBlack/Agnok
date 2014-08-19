# Set the working application directory
# working_directory "/path/to/your/app"
working_directory "/var/www/rails/Agnok/blog"

# Unicorn PID file location
# pid "/path/to/pids/unicorn.pid"
pid "/var/www/rails/Agnok/blog/pids/unicorn.pid"

# Path to logs
# stderr_path "/path/to/log/unicorn.log"
# stdout_path "/path/to/log/unicorn.log"
stderr_path "/var/www/rails/Agnok/blog/log/unicorn.log"
stdout_path "/var/www/rails/Agnok/blog/log/unicorn.log"

# Unicorn socket
listen "/tmp/unicorn.blog.sock"
# listen "/tmp/unicorn.myapp.sock"

# Number of processes
# worker_processes 4
worker_processes 1

# Time-out
timeout 60

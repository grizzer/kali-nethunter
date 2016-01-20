require 'erb'

module Thin
  module Controllers
    # System service controller to launch all servers which
    # config files are in a directory.
    class Service < Controller
      INITD_PATH          = File.directory?('/etc/rc.d') ? '/etc/rc.d/thin' : '/etc/init.d/thin'
      DEFAULT_CONFIG_PATH = '/etc/thin'
      TEMPLATE            = File.dirname(__FILE__) + '/service.sh.erb'
    
      def initialize(options)
        super
      
        raise PlatformNotSupported, 'Running as a service only supported on Linux' unless Thin.linux?
      end
    
      def config_path
        @options[:all] || DEFAULT_CONFIG_PATH
      end
    
      def start
        run :start
      end
    
      def stop
        run :stop
      end
    
      def restart
        run :restart
      end
    
      def install(config_files_path=DEFAULT_CONFIG_PATH)
        log ">> Thin service is already installed at #{INITD_PATH} by the debian package"
      end
    
      private
        def run(command)
          Dir[config_path + '/*'].each do |config|
            log "[#{command}] #{config} ..."
            Command.run(command, :config => config, :daemonize => true)
          end
        end
      
        def sh(cmd)
          log cmd
          system(cmd)
        end
    end
  end
end

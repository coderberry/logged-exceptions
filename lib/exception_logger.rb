module ExceptionLogger
  
  require 'will_paginate' unless Kernel.const_defined? 'WillPaginate'
  WillPaginate.enable
  
  def self.included(controller)
    controller.extend(ClassMethods)
  end

  module ClassMethods
    def log_error(exception)
      super(exception)
      begin
        LoggedException.create_from_exception(controller_name, action_name, request, session, exception)
      rescue => e
        puts "EXCEPTION: #{e.message}"
        logger.error(e)
      end
    end
  end
end
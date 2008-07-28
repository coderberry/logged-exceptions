class LoggedExceptionsGenerator < Rails::Generator::NamedBase
  def manifest
    record do |m|
      m.file  "logged_exception.rb",              "app/models/logged_exception.rb"
      m.file  "logged_exceptions_controller.rb",  "app/controllers/logged_exceptions_controller.rb"
      m.file  "logged_exceptions_helper.rb",      "app/helpers/logged_exceptions_helper.rb"
      m.directory                                 "app/views/logged_exceptions"
      m.file  "views/_exceptions.html.erb",       "app/views/logged_exceptions/_expections.html.erb"
      m.file  "views/_feed.html.erb",             "app/views/logged_exceptions/_feed.html.erb"
      m.file  "views/_show.html.erb",             "app/views/logged_exceptions/_show.html.erb"
      m.file  "views/destroy.rjs",                "app/views/logged_exceptions/destroy.rjs"
      m.file  "views/destroy_all.rjs",            "app/views/logged_exceptions/destroy_all.rjs"
      m.file  "views/index.html.erb",             "app/views/logged_exceptions/index.html.erb"
      m.file  "views/query.rjs",                  "app/views/logged_exceptions/query.rjs"
      m.file  "views/query.rxml",                 "app/views/logged_exceptions/query.rxml"
      m.file  "views/show.rjs",                   "app/views/logged_exceptions/show.rjs"
      m.directory                                 "db/migrate"
      m.migration_template 'migration.rb', 'db/migrate'
    end
  end
end

ActionController::Base.send :prepend_before_filter, Arturaz::SetNamesUtf8
suppress(ActiveRecord::StatementInvalid) do
  ActiveRecord::Base.connection.execute 'SET NAMES UTF8'
end
if @exception
  json.partial! 'api/errors/exception', exxception: @exception
else
  json.message 'server error'
end

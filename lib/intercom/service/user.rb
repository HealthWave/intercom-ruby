require 'intercom/service/base_service'
require 'intercom/api_operations/load'
require 'intercom/api_operations/list'
require 'intercom/api_operations/find'
require 'intercom/api_operations/find_all'
require 'intercom/api_operations/save'
require 'intercom/api_operations/delete'
require 'intercom/extended_api_operations/tags'
require 'intercom/extended_api_operations/segments'
require 'intercom/extended_api_operations/bulk_create'

module Intercom
  module Service
    class User < BaseService
      include ApiOperations::Load
      include ApiOperations::List
      include ApiOperations::Find
      include ApiOperations::FindAll
      include ApiOperations::Save
      include ApiOperations::Delete
      include ExtendedApiOperations::Tags
      include ExtendedApiOperations::Segments
      include ExtendedApiOperations::BulkCreate

      def collection_class
        Intercom::User
      end
    end
  end
end

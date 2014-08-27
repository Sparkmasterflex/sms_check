require 'rails/generators/named_base'
require 'rails/generators/active_record'
require 'rails/all'
require 'digest/md5'

module SmsCheck
  module Generators
    class SmsCheckGenerator < ActiveRecord::Generators::Base
      include Rails::Generators::ResourceHelpers

      namespace "sms_check"

      desc "Create SmsCheck Migrations"

      source_root File.expand_path("../templates", __FILE__)

      def class_exists
        unless class_exists? class_name
          puts "\n\n#{class_name.capitalize} does not exist. Please run $ rails g model #{class_name} and try again.\n\n"
          raise "ModelNotFound"
        end
      end

      # def add_to_config
      #   if needed arguements to add to migration
      # end

      def copy_sms_check_migration
        migration_template "migration_existing.rb", "db/migrate/add_sms_check_to_#{plural_name.downcase}"
      end

      def migration_data
<<RUBY
        ## Add active column to table
        t.string :sms_check_mobile, :after => :id
        t.string :sms_check_gateway, :after => :sms_check_mobile
        t.string :sms_check_pin, :after => :sms_check_gateway, :limit => 15
        t.datetime :sms_check_verified_at, :after => :encrypted_sms_check_pin
        t.datetime :sms_check_sent_at, :after => :sms_check_verified_at
RUBY
      end

      private

      def class_exists?(class_name)
        klass = Module.const_get(class_name)
        return klass.is_a?(Class)
      rescue NameError
        return false
      end
    end
  end
end

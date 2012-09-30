# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Populate default project template:
Template.create(:template_name => "default_project")

# Create default homepage:
Page.create(:title => "Default Homepage", :description => "This is the default homepage", :is_homepage => true, :is_project => false, :template_id => 1, :slug => "default-homepage")
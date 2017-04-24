#
#    Copyright (C) 2014 Savoir-faire Linux Inc. (<www.savoirfairelinux.com>).
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU Affero General Public License as
#    published by the Free Software Foundation, either version 3 of the
#    License, or (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU Affero General Public License for more details.
#
#    You should have received a copy of the GNU Affero General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
require 'redmine'
require 'issue_patch'
require 'timebank_helper'
require 'versions_controller_patch'

Redmine::Plugin.register :redmine_timebank do

	name 'Redmine Time Bank'
	author 'Savoir-faire Linux'
	description 'Show a table with summation total of spent and estimated hours, story points, remaining and projected in version pages.'
	version '0.1.0'
	url 'https://github.com/savoirfairelinux/redmine-timebank'
	author_url 'https://www.savoirfairelinux.com/'

	settings :default => {
		:story_trackers => [],
		:cache_minutes => 1,
	}, :partial => 'sfl_timebank_settings'

end

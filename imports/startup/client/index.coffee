# Router
import '/imports/api/router/router.coffee'

# Layouts
import '/imports/ui/layouts/blank/blank.coffee'
import '/imports/ui/layouts/main/main.coffee'
import '/imports/ui/layouts/inverted/inverted.coffee'

# Pages
import '/imports/ui/pages/notFound/notFound.coffee'
import '/imports/ui/pages/about/about.coffee'
import '/imports/ui/pages/privacy/privacy.coffee'
import '/imports/ui/pages/terms/terms.coffee'
import '/imports/ui/pages/welcome/welcome.coffee'
import '/imports/ui/pages/dashboard/dashboard.coffee'
import '/imports/ui/pages/profile/profile.coffee'
import '/imports/ui/pages/support/support.coffee'

# Helpers
import '/imports/api/helpers/jdenticon.coffee'

# Resources
import '/imports/api/resources/bootstrap.min.js'

# TimeSync
import { TimeSync } from 'meteor/mizzao:timesync'

Meteor.startup ->

	TimeSync.loggingEnabled = false

	BlazeLayout.setRoot('body')

	Tracker.autorun ->

		title = TAPi18n.__('navigation.' + FlowRouter.getRouteName())

		if FlowRouter.getRouteName() == 'home' && !Meteor.user()
			title = TAPi18n.__('navigation.login')

		document.title = title + ' | JWManagement'

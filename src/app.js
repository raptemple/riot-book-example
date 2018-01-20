import riot from 'riot'
import 'riot-route/lib/tag'

import './assets/styles/main.scss'
import './components/app.tag'
import './components/service-card.tag'
import './components/header.tag'
import './components/footer.tag'
import './components/sidebar.tag'
import './routes/home.tag'
import './routes/oversight.tag'
import './routes/services.tag'
import './routes/deployments.tag'

riot.mount('app')

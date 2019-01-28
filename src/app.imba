import 'imba-router/src/index'
tag App
	def currentRouteUpper
		router.path[1].toUpperCase + router.path.slice(2)
	def render
		<self> 
			<header>
				if router.path is '/'
					<h4> "Imba-Router — Home"
				else
					<h4> "Imba-Router — " + currentRouteUpper
			<nav>
				<button route-to="/"> "home"
				<button route-to="/hello"> "Hello"
				<button route-to="/world"> "World!"
Imba.mount <App>

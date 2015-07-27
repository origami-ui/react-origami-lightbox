
var
  React $ require :react

var
  Lightbox (React.createFactory $ require :./lightbox)
  div $ React.createFactory :div

var pageComponent $ React.createClass $ {}
  :displayName :app-page

  :getInitialState $ \ ()
    {} (:show false)

  :onClick $ \ (event)
    this.setState $ {} (:show $ not this.state.show)

  :onClose $ \ (event)
    this.setState $ {} (:show false)

  :render $ \ ()
    div ({} (:className :app-page))
      div ({} (:className :toggler) (:onClick this.onClick)) :Toggle
      Lightbox ({} (:show this.state.show) (:onClose this.onClose))
        div null :content

var Page $ React.createFactory pageComponent
React.render (Page) document.body

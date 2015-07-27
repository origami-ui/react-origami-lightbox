
var
  React $ require :react/addons

var
  Transition $ React.createFactory React.addons.CSSTransitionGroup
  div $ React.createFactory :div
  svg $ React.createFactory :svg
  polygon $ React.createFactory :polygon

= module.exports $ React.createClass $ {}
  :displayName :react-origami-lightbox

  :propTypes $ {}
    :show React.PropTypes.bool.isRequired
    :alias React.PropTypes.string
    :onClose React.PropTypes.func.isRequired

  :getDefaultProps $ \ ()
    {} (:alias :default)

  :onClose $ \ (event)
    this.props.onClose

  :onBackdropClick $ \ (event)
    if (is event.target event.currentTarget) $ do
      this.props.onClose
    return undefined

  :render $ \ ()

    Transition
      {}
        :className $ + :react-origami-lightbox ": " (+ :as- this.props.alias)
        :transitionName :lightbox
      cond this.props.show
        div ({} (:className :lightbox-backdrop) (:onClick this.onBackdropClick))
          div ({} (:className :lightbox-content))
            , this.props.children
            svg ({} (:className :lightbox-close) (:width 40) (:height 40))
              polygon $ {}
                :onClick this.onClose
                :points ":0,0 40,0 40,40"
        , null

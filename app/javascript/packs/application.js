import Rails from "@rails/ujs"

// import * as ActiveStorage from "@rails/activestorage"
import "channels"

import "../stylesheets/application.scss";

import Vue from 'vue/dist/vue.esm'
import Vuex from 'vuex'

import MatestackUiCore from 'matestack-ui-core'

import '../../matestack/app/components/game/board.js'

let matestackUiApp = undefined

document.addEventListener('DOMContentLoaded', () => {
  matestackUiApp = new Vue({
    el: "#matestack-ui",
    store: MatestackUiCore.store
  })
})



import MatestackUiBootstrap from "matestack-ui-bootstrap"

const images = require.context('../images', true)

Rails.start()
// ActiveStorage.start()

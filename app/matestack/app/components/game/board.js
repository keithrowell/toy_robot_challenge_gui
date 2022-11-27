import Vue from 'vue/dist/vue.esm'
import MatestackUiCore from 'matestack-ui-core'

Vue.component('game-board', {

  mixins: [MatestackUiCore.componentMixin],

  data() {
    return {
      id: this.props['id'],
      x: this.props['x'],
      y: this.props['y'],
      facing: this.props['facing'],
    }
  },

  computed: {
    rotation: function () {
      switch (this.facing) {
        case 'north': return 0
        case 'east': return 90
        case 'south': return 180
        case 'west': return 270
      }
    },

    robot_rotation_transform: function () {
      return "rotate(" + this.rotation + ", 43, 43)";
    },

    robot_x_translation: function () {
      return this.x * 100 + 194;
    },

    robot_y_translation: function () {
      return 603 - this.y * 100;
    },

    robot_translate_transform: function () {
      return "translate(" + this.robot_x_translation + ", " + this.robot_y_translation + ")";
    },
  },

  methods: {
    updatePosition: function (payload) {
      this.x = payload.x
      this.y = payload.y
      this.facing = payload.facing
    },
  },

  mounted(){
    MatestackUiCore.eventHub.$on("update_robot_ui", this.updatePosition)
  },
  beforeDestroy(){
    MatestackUiCore.eventHub.$off("update_robot_ui", this.updatePosition)
  }
});

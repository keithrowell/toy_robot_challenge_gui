import consumer from "./consumer"
import MatestackUiCore from "matestack-ui-core"

consumer.subscriptions.create("PublicChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    MatestackUiCore.eventHub.$emit(data.event, data)
  }
});


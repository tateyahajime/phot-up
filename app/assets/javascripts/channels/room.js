App.room = App.cable.subscriptions.create("RoomChannel", {
  connected: function() {
    console.log("connected")
    // Called when the subscription is ready for use on the server
  },

  disconnected: function() {
    // Called when the subscription has been terminated by the server
  },

  received: function(data) {
    const messages = document.getElementById("messages")
    messages.innerHTML += `<p>${data}</p>`
    // Called when there's incoming data on the websocket for this channel
  },

  see: function(content) {
    return this.perform('see',{message: content});
  }
});

document.addEventListener("DOMContentLoaded", function(){
  const input = document.getElementById("input")
  const button = document.getElementById("btn")
  button.addEventListener("click", function(){
    const content = input.value
    App.room.see(content)
    input.value = ""
  })
})

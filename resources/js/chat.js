let user_id = localStorage.getItem('id');

import Echo from "laravel-echo"
import Event, { XMLHttpRequest } from 'pusher-js';

window.Pusher = require('pusher-js');

window.Echo = new Echo({
    broadcaster: 'pusher',
    key: process.env.MIX_PUSHER_APP_KEY,
    cluster: process.env.MIX_PUSHER_APP_CLUSTER,
    wsHost: window.location.hostname,
    wsPort: 6001,
    forceTLS: false,
    disableStats: true,
});


let onlineUsersBox = document.getElementById('online-users-box'),
    usersCount = 0;


window.Echo.join(`online-users`)
    .here((users) => {
        usersCount = users.length;
        console.log(users)
        users.forEach(user => {

            if (user.id == user_id) {
                return
            }
            if (usersCount > 1) {

                document.getElementById('no-online').style.display = 'none';
                let item = `<li class="list-group-item"  id ='user-${user.id}'>  <span class="online-icon"></span>${user.name}</li>`;
                onlineUsersBox.innerHTML += item;
            }

        })

    })
    .joining((user) => {

        if (!document.contains(document.getElementById(`user-${user.id}`))) {
            usersCount++;
            document.getElementById('no-online').style.display = 'none';
            let item = `<li class="list-group-item"  id ='user-${user.id}'>  <span class="online-icon"></span>${user.name}</li>`;
            onlineUsersBox.innerHTML += item;

        }


    })
    .leaving((user) => {
        usersCount--;
        document.getElementById(`user-${user.id}`).remove();

    })
    .error((error) => {
        console.error(error);
    });

//add new message using ajax Request
let allMessageContainer = document.getElementById('message-box'),
    addMesseg = document.getElementById('send-message'),
    addMessageInput = document.getElementById('message');

addMesseg.addEventListener('submit', function(event) {

    event.preventDefault();

    let url = event.currentTarget.getAttribute('action'),
        form = new FormData(event.currentTarget);


    fetch(url, {
            method: 'POST',
            body: form
        })
        .then(res => res.json())
        .then(res => {

            if (res.success == true) {

                let newMsg = `
                <div class="message mine"> ${ addMessageInput.value}
                <span class="date"> now</span>
                </div>
                <div class="clear"></div>
                `;
                allMessageContainer.innerHTML += newMsg;
                scrollToBottom('message-box');
                addMessageInput.value = '';
            }
        })

});
//new message listenr
window.Echo.channel('chat-new-message')
    .listen('NewMessageEvent', (e) => {

        if (e.message.user_id == user_id) {
            return
        }
        console.log(e.message.body)
        let newMsg = `
        <div class="message"> ${ e.message.body }
        <span class="owner"> ${ e.message.user_name }</span>
        <span class="date"> ${ e.message.date }</span>
        </div>

        <div class="clear">
        </div>
        `;
        allMessageContainer.innerHTML += newMsg;
        scrollToBottom('message-box');

    });


//scroll to end of message box
function scrollToBottom(id) {
    let div = document.getElementById(id);
    div.scrollTop = div.scrollHeight - div.clientHeight;
}

scrollToBottom('message-box');

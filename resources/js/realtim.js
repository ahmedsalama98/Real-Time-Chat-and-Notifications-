let user_id = localStorage.getItem('id');

import Echo from "laravel-echo"

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
window.Echo.channel('event')
    .listen('TestEvent', (e) => {
        console.log(e.message);
    });

// Echo.private(`notify.${localStorage.getItem('id')}`)
//     .listen('NotifyEvent', (e) => {
//         // console.log(e.data);
//         alert(e.data.message)
//     });

window.Echo.private(`App.Models.User.${user_id}`)
    .notification((notification) => {
        let messeege = notification.messeege;
        console.log(messeege);
        alert(messeege);
    });


// window.Echo.join(`online-users`)
//     .here((users) => {
//         console.log(users)
//     })
//     .joining((user) => {
//         console.log(user.name + ' is here');
//     })
//     .leaving((user) => {
//         console.log(user.name + ' leaving');
//     })
//     .error((error) => {
//         console.error(error);
//     });

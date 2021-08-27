<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Notifications\Notification;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;


class laravelNotifyTest extends Notification  implements ShouldBroadcast
{
    use Queueable;


    public $data ;
    public function __construct($data )
    {
        $this->data= $data ;
    }

    public function via($notifiable)
    {
        return ['database', 'broadcast'];
    }


    public function toMail($notifiable)
    {
        return (new MailMessage)
                    ->line('The introduction to the notification.')
                    ->action('Notification Action', url('/'))
                    ->line('Thank you for using our application!');
    }

    public function toArray($notifiable)
    {
        return [
            'messeege' => $this->data['message']
        ];
    }


}

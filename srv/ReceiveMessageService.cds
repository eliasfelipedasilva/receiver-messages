using db.messages as my from '../db/schema';


@path: '/ReceiveMessageService'
@(requires : 'system-user')
service ReceiveMessageService {

    entity ReceivedMessages as projection on my.ReceivedMessages;

}

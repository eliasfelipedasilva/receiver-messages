using db.messages as my from '../db/schema';


@path: '/ReceiveMessageService'
service ReceiveMessageService {

    entity ReceivedMessages as projection on my.ReceivedMessages;

}
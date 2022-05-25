namespace db.messages;
using {
managed,
cuid
}
from '@sap/cds/common';

type Documento : String enum{
    OrdemVenda;
    Remessa;
    Teste;
}

type Pais : String enum {
    BR;
    CL;
    CO;
}

entity ReceivedMessages: cuid, managed {
        pais            : Pais;
        tipoDocumento   : Documento;
        jsonRecebido    : LargeString;
        mapeado         : Boolean;
        status          : Status default 'A';

}   

type Status : String enum {
    A;
    P;
    E;
    S;
}


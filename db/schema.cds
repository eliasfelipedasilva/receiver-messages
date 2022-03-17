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
    key pais            : Pais;
        tipoDocumento   : Documento;
        jsonRecebido    : LargeString;

}   


# delphi-and-jsons
Gerando e Recebendo Json um exemplo bem pratico XE2


Gerando o Json:
```
procedure TFrm.BtnGerClick(Sender: TObject);
var
  JSon, JSonObject: TJSONObject;
  JSonArray: TJSONArray;
  vI: Integer;

  Uid: TGuid;
begin
  PageControl.ActivePage := TabSheet1;
  MemoGerando.Lines.Clear;
  JSonObject := TJSONObject.Create;
  try
    JSonArray  := TJSONArray.Create;
    JSonObject.AddPair(TJSONPair.Create('AlgumaCoisa', 'AlgumValor'));

    JSonObject.AddPair('Itens', JSonArray);
    for vI :=1 to 10 do
    begin
      CreateGuid(Uid);
      JSon := TJSONObject.Create;
      JSon.AddPair(TJSONPair.Create('Id',    TJSONNumber.Create(vI)));
      JSon.AddPair(TJSONPair.Create('Guid',  TJSONString.Create(GuidToString(Uid))));
      JSon.AddPair(TJSONPair.Create('Null',  TJSONNull.Create));
      JSon.AddPair(TJSONPair.Create('True',  TJSONTrue.Create));
      JSon.AddPair(TJSONPair.Create('False', TJSONFalse.Create));
      JSonArray.AddElement(JSon);
    end;

    MemoGerando.Lines.add(JSonObject.ToString());
  finally
    FreeAndNil(JSonObject);
  end;
end;
```
Resultado:
```
{
  "AlgumaCoisa": "AlgumValor",
  "Itens": [
    {
      "Id": 1,
      "Guid": "{F07D67CC-4D87-4E99-AB03-F75CF434A721}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 2,
      "Guid": "{F610727A-5D96-42AF-ADEF-BB3E1C515D35}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 3,
      "Guid": "{D1852F10-F28E-4968-B2BC-9F124259F4B9}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 4,
      "Guid": "{B8943575-A08E-43B9-B7C7-A70D1FDFD15D}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 5,
      "Guid": "{6CD8CC8A-2CB5-40D3-90F3-2D8DFAB1B1C4}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 6,
      "Guid": "{E2120334-8B53-4970-91AC-C68107C8C806}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 7,
      "Guid": "{13B7C7EC-5C7F-40FE-9D64-562B507CAFF4}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 8,
      "Guid": "{8BE11DF7-C784-47F7-BC7A-56CCD017C0B3}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 9,
      "Guid": "{73E74EA4-7D60-4C78-B365-E9C0630D7007}",
      "Null": null,
      "True": true,
      "False": false
    },
    {
      "Id": 10,
      "Guid": "{7BCAA11C-2933-441C-BAAE-41CE6BE1D8F1}",
      "Null": null,
      "True": true,
      "False": false
    }
  ]
}
```
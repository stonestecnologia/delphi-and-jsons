unit unt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Data.DBXJson, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TFrm = class(TForm)
    PageControl: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    BtnGer: TButton;
    Panel2: TPanel;
    MemoGerando: TMemo;
    Panel3: TPanel;
    MemoRecebendo: TMemo;
    btnRec: TButton;
    procedure BtnGerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnRecClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm: TFrm;

implementation

{$R *.dfm}

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
    JSonObject.AddPair(TJSONPair.Create('a', 'AlgumValor'));
    JSonObject.AddPair(TJSONPair.Create('b', 'AlgumValor'));
    JSonObject.AddPair(TJSONPair.Create('c', 'AlgumValor'));
    JSonObject.AddPair(TJSONPair.Create('e', 'AlgumValor'));
    JSonObject.AddPair(TJSONPair.Create('d', 'AlgumValor'));

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
      JSon.AddPair(TJSONPair.Create('NomeAssociado', TJSONString.Create('TABELA.momass')));
      JSonArray.AddElement(JSon);
    end;

    MemoGerando.Lines.add(JSonObject.ToString());
  finally
    FreeAndNil(JSonObject);
  end;
end;

procedure TFrm.btnRecClick(Sender: TObject);
var
  vJson, vItem: TJSONObject;
  vItens: TJSONArray;
  vI: Integer;
begin
  PageControl.ActivePage := TabSheet2;
  MemoRecebendo.Lines.Clear;
  vJson := TJsonObject(TJSONObject.ParseJSONValue(TEncoding.ASCII.GetBytes(MemoGerando.Lines.Text),0));
  try
    vItens := TJSONArray(vJson.Get('Itens').JsonValue);
    for vI := 0 to vItens.Size - 1 do
    begin
      vItem := vItens.Get(vI) as TJSONObject;
      MemoRecebendo.Lines.Add(vItem.Get('Id').JsonValue.Value + ' - ' +
                              vItem.Get('Guid').JsonValue.Value)
    end;
  finally
    FreeAndNil(vJson);
  end;
end;

procedure TFrm.FormCreate(Sender: TObject);
begin
  MemoGerando.Lines.Clear;
end;

end.

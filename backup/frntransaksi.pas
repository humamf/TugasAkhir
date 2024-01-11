unit frnTransaksi;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, SQLDB, mysql80conn, odbcconn, DB, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DBGrids, DBCtrls, frnTambahTransaksi,
  frnTambahDetailTransaksi, LR_Class, LR_Desgn, LR_DBSet;

type

  { TForm7 }

  TForm7 = class(TForm)
    btnTambah: TButton;
    btnDetail: TButton;
    Button1: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBNavigator1: TDBNavigator;
    frDBDataSet1: TfrDBDataSet;
    frReport1: TfrReport;
    Label1: TLabel;
    SQLConnector1: TSQLConnector;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure btnDetailClick(Sender: TObject);
    procedure btnTambahClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form7: TForm7;

implementation

{$R *.lfm}

{ TForm7 }

procedure TForm7.btnTambahClick(Sender: TObject);
begin
    // Membuat objek Form8
  with TForm8.Create(Application) do
  begin
    try
      // Menampilkan form data barang
      ShowModal;
    finally
      Free; // Membebaskan memori objek Form1 setelah selesai digunakan
    end;
  end;
end;

procedure TForm7.Button1Click(Sender: TObject);
begin
  frReport1.LoadFromFile(ExtractFilePath(Application.Exename)+'report1.lrf');
  frReport1.ShowReport;
end;

procedure TForm7.btnDetailClick(Sender: TObject);
begin
    // Membuat objek Form9
  with TForm9.Create(Application) do
  begin
    try
      // Menampilkan form data barang
      ShowModal;
    finally
      Free; // Membebaskan memori objek Form1 setelah selesai digunakan
    end;
  end;
end;

end.


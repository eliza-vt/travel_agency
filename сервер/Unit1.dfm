object MyServer: TMyServer
  OldCreateOrder = False
  Left = 230
  Top = 198
  Height = 559
  Width = 1245
  object IBDatabase1: TIBDatabase
    DatabaseName = 'localhost:C:\Users\448\Downloads\Project\Project\BD.FDB'
    Params.Strings = (
      'user_name=SYSDBA'
      'password=masterkey'
      'lc_ctype=WIN1251')
    LoginPrompt = False
    DefaultTransaction = IBTransaction1
    IdleTimer = 0
    SQLDialect = 3
    TraceFlags = []
    Left = 24
    Top = 8
  end
  object IBTransaction1: TIBTransaction
    Active = False
    DefaultDatabase = IBDatabase1
    AutoStopAction = saNone
    Left = 24
    Top = 64
  end
  object TApplication: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'APP'
    Left = 104
    Top = 8
  end
  object TChild: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CHILD'
    Left = 192
    Top = 8
  end
  object TCity: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CITY'
    Left = 264
    Top = 8
  end
  object TClient: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'CLIENT'
    Left = 336
    Top = 8
  end
  object TCountry: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'COUNTRY'
    Left = 416
    Top = 8
  end
  object TExcursion: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'EXCURSION'
    Left = 504
    Top = 8
  end
  object THavingweight: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'HAVINGWEIGHT'
    Left = 608
    Top = 8
  end
  object THotel: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'HOTEL'
    Left = 704
    Top = 8
  end
  object TLeaving: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'LEAVING'
    Left = 784
    Top = 8
  end
  object TTour: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TRAVEL'
    Left = 864
    Top = 8
  end
  object TTransport: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TRANSPORT'
    Left = 944
    Top = 8
  end
  object TWeight: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'WEIGHT'
    Left = 1032
    Top = 8
  end
  object TWeighter: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'WEIGHTER'
    Left = 1120
    Top = 8
  end
  object spAddApplication: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDAPP'
    Left = 104
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_RG'
        ParamType = ptInput
      end>
  end
  object spDeleteApplication: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEAPPLICATION'
    Left = 104
    Top = 128
  end
  object spDeleteChild: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETECHILD'
    Left = 192
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddCity: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDCITY'
    Left = 264
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end>
  end
  object spDeleteCity: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETECITY'
    Left = 264
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spDeleteClient: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETECLIENT'
    Left = 336
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddCountry: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDCOUNTRY'
    Left = 416
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_CITY'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end>
  end
  object spDeleteCountry: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETECOUNTRY'
    Left = 416
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddExcursion: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDEXCURTION'
    Left = 504
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_EXCRSN'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INLASTING'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INPLACE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INAGENCY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INRETING_AGENCY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE'
        ParamType = ptInput
      end>
  end
  object spDeleteExcursion: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEEXCURSION'
    Left = 504
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddHavingweight: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDHAVINGWEIGHT'
    Left = 608
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_WEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_WEIGHTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_TRANSPORT'
        ParamType = ptInput
      end>
  end
  object spDeleteHavingweight: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEHAVINGWEIGHT'
    Left = 608
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_WEIGHT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_WEIGHTER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_TRANSPORT'
        ParamType = ptInput
      end>
  end
  object spAddChild: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDCHILD'
    Left = 192
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INSURNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INLASTNAME'
        ParamType = ptInput
      end>
  end
  object spAddHotel: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDHOTEL'
    Left = 704
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INRECING'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE'
        ParamType = ptInput
      end>
  end
  object spDeleteHotel: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEHOTEL'
    Left = 704
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddLeaving: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDLEAVING'
    Left = 784
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_HOTEL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_ARRIVING'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_LEAVING'
        ParamType = ptInput
      end>
  end
  object spDeleteLeaving: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETELEAVING'
    Left = 784
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_HOTEL'
        ParamType = ptInput
      end>
  end
  object spAddTour: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTRAVEL'
    Left = 864
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_TRANSPORT'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_EXCURTION'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_COUNTRY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_CITY'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_ARRIVING'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_LEAVING'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INKOL_VO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INVISA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE_AGENCY'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE_VISA'
        ParamType = ptInput
      end>
  end
  object spDeleteTour: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETOUR'
    Left = 864
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddTransport: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDTRANSPORT'
    Left = 944
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INAIRPORT'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INKIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INDISPATCHER'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INKEEPING'
        ParamType = ptInput
      end>
  end
  object spDeleteTransport: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETETRANSPORT'
    Left = 944
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddWeight: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDWEIGHT'
    Left = 1032
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'INID_CLIENT'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_ARRIVING'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INDATE_LEAVING'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INKIND'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'INPRICE'
        ParamType = ptInput
      end>
  end
  object spDeleteWeight: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEWEIGHT'
    Left = 1032
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddWeighter: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDWEIGHTER'
    Left = 1120
    Top = 72
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INSURNAME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INLASTNAME'
        ParamType = ptInput
      end>
  end
  object spDeleteWeighter: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'DELETEWEIGHTER'
    Left = 1120
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
      end>
  end
  object spAddClient: TIBStoredProc
    Database = IBDatabase1
    Transaction = IBTransaction1
    StoredProcName = 'ADDCLIENT'
    Left = 336
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INID'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'INNAME'
        ParamType = ptInput
        Value = 'BSTR'
      end
      item
        DataType = ftString
        Name = 'INSURNAME'
        ParamType = ptInput
        Value = 'BSTR'
      end
      item
        DataType = ftString
        Name = 'INLASTNAME'
        ParamType = ptInput
        Value = 'BSTR'
      end
      item
        DataType = ftInteger
        Name = 'INID_CHILD'
        ParamType = ptInput
        Value = '0'
      end
      item
        DataType = ftString
        Name = 'INPOL'
        ParamType = ptInput
        Value = 'BSTR'
      end
      item
        DataType = ftString
        Name = 'INPURPOSE'
        ParamType = ptInput
        Value = 'BSTR'
      end>
  end
  object dspApplication: TDataSetProvider
    DataSet = TApplication
    Left = 104
    Top = 192
  end
  object dspChild: TDataSetProvider
    DataSet = TChild
    Left = 192
    Top = 192
  end
  object dspCity: TDataSetProvider
    DataSet = TCity
    Left = 264
    Top = 192
  end
  object dspClient: TDataSetProvider
    DataSet = TClient
    Left = 336
    Top = 192
  end
  object dspCountry: TDataSetProvider
    DataSet = TCountry
    Left = 416
    Top = 192
  end
  object dspExcursion: TDataSetProvider
    DataSet = TExcursion
    Left = 504
    Top = 192
  end
  object dspHavingweight: TDataSetProvider
    DataSet = THavingweight
    Left = 608
    Top = 192
  end
  object dspHotel: TDataSetProvider
    DataSet = THotel
    Left = 704
    Top = 192
  end
  object dspLeaving: TDataSetProvider
    DataSet = TLeaving
    Left = 784
    Top = 192
  end
  object dspTour: TDataSetProvider
    DataSet = TTour
    Left = 864
    Top = 192
  end
  object dspTransport: TDataSetProvider
    DataSet = TTransport
    Left = 944
    Top = 192
  end
  object dspWeight: TDataSetProvider
    DataSet = TWeight
    Left = 1032
    Top = 192
  end
  object dspWeighter: TDataSetProvider
    DataSet = TWeighter
    Left = 1120
    Top = 192
  end
  object tTMP: TIBTable
    Database = IBDatabase1
    Transaction = IBTransaction1
    BufferChunks = 1000
    CachedUpdates = False
    TableName = 'TMP'
    Left = 112
    Top = 288
  end
  object dspTMP: TDataSetProvider
    DataSet = tTMP
    Left = 112
    Top = 352
  end
end

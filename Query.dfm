object dmQuerys: TdmQuerys
  OldCreateOrder = False
  Left = 701
  Top = 287
  Height = 150
  Width = 215
  object dbtTransaccion: TpFIBTransaction
    TimeoutAction = TARollback
    CSMonitorSupport.Enabled = csmeDatabaseDriven
    Left = 40
    Top = 32
  end
  object figQuery: TpFIBQuery
    Transaction = dbtTransaccion
    CSMonitorSupport.Enabled = csmeTransactionDriven
    Left = 128
    Top = 32
    qoStartTransaction = True
  end
end

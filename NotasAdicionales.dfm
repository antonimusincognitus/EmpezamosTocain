object frmNotasAdicionales: TfrmNotasAdicionales
  Left = 476
  Top = 275
  Width = 497
  Height = 239
  Caption = 'Notas adicionales del art'#237'culo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Unicode MS'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 15
  object lblNotas: TLabel
    Left = 8
    Top = 40
    Width = 32
    Height = 15
    Caption = 'Notas:'
  end
  object AdvLUEdit1: TAdvLUEdit
    Left = 56
    Top = 8
    Width = 305
    Height = 20
    DisabledColor = cl3DLight
    LabelCaption = 'Art'#237'culo: '
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'Arial Unicode MS'
    LabelFont.Style = []
    Lookup.Separator = ';'
    Color = clWindow
    Ctl3D = False
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Arial Unicode MS'
    Font.Style = []
    ParentCtl3D = False
    ParentFont = False
    TabOrder = 0
    Visible = True
    Version = '1.4.0.0'
    AutoHistory = False
    AutoSynchronize = False
    FileLookup = False
    LookupPersist.Enable = False
    LookupPersist.Location = plInifile
    LookupPersist.Count = 0
    LookupPersist.MaxCount = False
    MatchCase = False
  end
  object Memo1: TMemo
    Left = 8
    Top = 56
    Width = 353
    Height = 137
    BevelEdges = []
    BevelInner = bvSpace
    BevelKind = bkFlat
    BevelOuter = bvNone
    Ctl3D = True
    ParentCtl3D = False
    ScrollBars = ssVertical
    TabOrder = 1
  end
  object btnAceptar: TButton
    Left = 384
    Top = 8
    Width = 89
    Height = 20
    Caption = 'Aceptar'
    TabOrder = 2
  end
  object btnCancelar: TButton
    Left = 384
    Top = 40
    Width = 89
    Height = 20
    Caption = 'Cancelar'
    TabOrder = 3
  end
  object brnNotasDelArticulo: TButton
    Left = 384
    Top = 72
    Width = 89
    Height = 20
    Caption = 'Notas del art'#237'culo'
    Enabled = False
    TabOrder = 4
  end
end

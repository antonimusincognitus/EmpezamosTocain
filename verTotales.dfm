object frmVerTotales: TfrmVerTotales
  Left = 616
  Top = 284
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsSingle
  Caption = 'Ver totales'
  ClientHeight = 171
  ClientWidth = 230
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Unicode MS'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object grpTotales: TGroupBox
    Left = 5
    Top = 10
    Width = 220
    Height = 135
    Caption = ' Totales '
    TabOrder = 0
    object lblSubtotal: TLabel
      Left = 16
      Top = 16
      Width = 39
      Height = 15
      Caption = 'Subtotal'
    end
    object lblDescuento: TLabel
      Left = 16
      Top = 32
      Width = 57
      Height = 15
      Caption = '-Descuento'
    end
    object lblImporteNeto: TLabel
      Left = 16
      Top = 64
      Width = 60
      Height = 15
      Caption = 'Importe neto'
    end
    object lblImpuestos: TLabel
      Left = 16
      Top = 80
      Width = 56
      Height = 15
      Caption = '+Impuestos'
    end
    object lblRetenciones: TLabel
      Left = 16
      Top = 96
      Width = 65
      Height = 15
      Caption = '-Retenciones'
    end
    object lblTotal: TLabel
      Left = 16
      Top = 112
      Width = 24
      Height = 15
      Caption = 'Total'
    end
    object ValueSubtotal: TLabel
      Left = 184
      Top = 16
      Width = 27
      Height = 15
      Caption = '00.00'
    end
    object ValueDescuento: TLabel
      Left = 184
      Top = 32
      Width = 27
      Height = 15
      Caption = '00.00'
    end
    object ValueDescuentoExtra: TLabel
      Left = 184
      Top = 48
      Width = 27
      Height = 15
      Caption = '00.00'
    end
    object ValueImporteNeto: TLabel
      Left = 184
      Top = 64
      Width = 27
      Height = 15
      Caption = '00.00'
    end
    object ValueImpuesto: TLabel
      Left = 184
      Top = 80
      Width = 27
      Height = 15
      Caption = '00.00'
    end
    object ValueRetenciones: TLabel
      Left = 184
      Top = 96
      Width = 27
      Height = 15
      Caption = '00.00'
    end
    object lblDescuentoExtra: TLabel
      Left = 16
      Top = 48
      Width = 85
      Height = 15
      Caption = '-Descuento extra'
    end
    object ValueTotales: TLabel
      Left = 184
      Top = 112
      Width = 27
      Height = 15
      Caption = '00.00'
    end
  end
  object btnAceptar: TButton
    Left = 150
    Top = 148
    Width = 75
    Height = 20
    Caption = '&Aceptar'
    TabOrder = 1
    OnClick = btnAceptarClick
  end
end

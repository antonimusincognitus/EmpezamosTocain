object frmBuscarCliente: TfrmBuscarCliente
  Left = 562
  Top = 211
  BorderIcons = [biSystemMenu, biHelp]
  BorderStyle = bsSingle
  Caption = 'Buscar'
  ClientHeight = 310
  ClientWidth = 453
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Unicode MS'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  DesignSize = (
    453
    310)
  PixelsPerInch = 96
  TextHeight = 14
  object lbllistaClentes: TLabel
    Left = 9
    Top = 90
    Width = 162
    Height = 14
    Caption = 'Lista de los clientes encontrados:'
  end
  object lblCantidadClientes: TLabel
    Left = 15
    Top = 280
    Width = 3
    Height = 14
  end
  object Bevel1: TBevel
    Left = 9
    Top = 82
    Width = 432
    Height = 2
  end
  object cbxCoincidirMayusculas: TCheckBox
    Left = 10
    Top = 37
    Width = 188
    Height = 16
    Anchors = []
    BiDiMode = bdLeftToRight
    Caption = 'Coincidir may'#250'sculas y min'#250'sculas'
    Color = clBtnFace
    Ctl3D = False
    ParentBiDiMode = False
    ParentColor = False
    ParentCtl3D = False
    TabOrder = 2
  end
  object cbxPalabras: TCheckBox
    Left = 10
    Top = 59
    Width = 188
    Height = 16
    BiDiMode = bdRightToLeftNoAlign
    Caption = 'Palabras en cualquier posici'#243'n '
    Checked = True
    ParentBiDiMode = False
    ParentShowHint = False
    ShowHint = False
    State = cbChecked
    TabOrder = 3
  end
  object edt_Clave: TAdvEdit
    Left = 42
    Top = 8
    Width = 128
    Height = 23
    OnValueValidate = edt_ClaveValueValidate
    EmptyText = 'Buscar'
    EmptyTextStyle = [fsUnderline]
    FocusColor = clBtnHighlight
    LabelCaption = 'Clave:'
    LabelPosition = lpLeftCenter
    LabelFont.Charset = DEFAULT_CHARSET
    LabelFont.Color = clWindowText
    LabelFont.Height = -11
    LabelFont.Name = 'MS Sans Serif'
    LabelFont.Style = []
    Lookup.Font.Charset = DEFAULT_CHARSET
    Lookup.Font.Color = clWindowText
    Lookup.Font.Height = -11
    Lookup.Font.Name = 'Arial'
    Lookup.Font.Style = []
    Lookup.Separator = ';'
    Color = clBtnHighlight
    TabOrder = 0
    Visible = True
    OnChange = edt_ClaveChange
    Version = '3.3.2.8'
  end
  object sgBusqueda: TAdvStringGrid
    Left = 9
    Top = 112
    Width = 434
    Height = 165
    Cursor = crDefault
    BiDiMode = bdLeftToRight
    ColCount = 3
    Ctl3D = True
    DefaultRowHeight = 19
    FixedColor = clSkyBlue
    FixedCols = 0
    RowCount = 2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -9
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goEditing, goRowSelect]
    ParentBiDiMode = False
    ParentCtl3D = False
    ParentFont = False
    ParentShowHint = False
    ScrollBars = ssBoth
    ShowHint = False
    TabOrder = 4
    OnDblClick = btnAceptarClick
    HoverRowColor = clInactiveCaption
    HoverRowCells = [hcNormal, hcSelected]
    ActiveCellFont.Charset = DEFAULT_CHARSET
    ActiveCellFont.Color = clWindowText
    ActiveCellFont.Height = -11
    ActiveCellFont.Name = 'Tahoma'
    ActiveCellFont.Style = [fsBold]
    ColumnHeaders.Strings = (
      'Clave'
      'Nombre'
      'ID')
    ControlLook.FixedGradientHoverFrom = 16710648
    ControlLook.FixedGradientHoverTo = 16446189
    ControlLook.FixedGradientHoverMirrorFrom = 16049367
    ControlLook.FixedGradientHoverMirrorTo = 15258305
    ControlLook.FixedGradientHoverBorder = 12033927
    ControlLook.FixedGradientDownFrom = 15853789
    ControlLook.FixedGradientDownTo = 15852760
    ControlLook.FixedGradientDownMirrorFrom = 15522767
    ControlLook.FixedGradientDownMirrorTo = 15588559
    ControlLook.FixedGradientDownBorder = 14007466
    ControlLook.DropDownHeader.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownHeader.Font.Color = clWindowText
    ControlLook.DropDownHeader.Font.Height = -11
    ControlLook.DropDownHeader.Font.Name = 'Tahoma'
    ControlLook.DropDownHeader.Font.Style = []
    ControlLook.DropDownHeader.Visible = True
    ControlLook.DropDownHeader.Buttons = <>
    ControlLook.DropDownFooter.Font.Charset = DEFAULT_CHARSET
    ControlLook.DropDownFooter.Font.Color = clWindowText
    ControlLook.DropDownFooter.Font.Height = -11
    ControlLook.DropDownFooter.Font.Name = 'MS Sans Serif'
    ControlLook.DropDownFooter.Font.Style = []
    ControlLook.DropDownFooter.Visible = True
    ControlLook.DropDownFooter.Buttons = <>
    Filter = <>
    FilterDropDown.Font.Charset = DEFAULT_CHARSET
    FilterDropDown.Font.Color = clWindowText
    FilterDropDown.Font.Height = -11
    FilterDropDown.Font.Name = 'MS Sans Serif'
    FilterDropDown.Font.Style = []
    FilterDropDownClear = '(All)'
    FilterEdit.TypeNames.Strings = (
      'Starts with'
      'Ends with'
      'Contains'
      'Not contains'
      'Equal'
      'Not equal'
      'Clear')
    FixedColWidth = 95
    FixedRowHeight = 19
    FixedRowAlways = True
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = [fsBold]
    FloatFormat = '%.2f'
    FocusHelper.Enabled = True
    HoverButtons.Buttons = <>
    HoverButtons.Position = hbLeftFromColumnLeft
    Look = glListView
    MouseActions.AutoSizeColOnDblClick = False
    MouseActions.RowSelect = True
    Navigation.AdvanceOnEnter = True
    Navigation.AdvanceInsert = True
    Navigation.AdvanceDirection = adTopBottom
    PrintSettings.DateFormat = 'dd/mm/yyyy'
    PrintSettings.Font.Charset = DEFAULT_CHARSET
    PrintSettings.Font.Color = clWindowText
    PrintSettings.Font.Height = -11
    PrintSettings.Font.Name = 'MS Sans Serif'
    PrintSettings.Font.Style = []
    PrintSettings.FixedFont.Charset = DEFAULT_CHARSET
    PrintSettings.FixedFont.Color = clWindowText
    PrintSettings.FixedFont.Height = -11
    PrintSettings.FixedFont.Name = 'MS Sans Serif'
    PrintSettings.FixedFont.Style = []
    PrintSettings.HeaderFont.Charset = DEFAULT_CHARSET
    PrintSettings.HeaderFont.Color = clWindowText
    PrintSettings.HeaderFont.Height = -11
    PrintSettings.HeaderFont.Name = 'MS Sans Serif'
    PrintSettings.HeaderFont.Style = []
    PrintSettings.FooterFont.Charset = DEFAULT_CHARSET
    PrintSettings.FooterFont.Color = clWindowText
    PrintSettings.FooterFont.Height = -11
    PrintSettings.FooterFont.Name = 'MS Sans Serif'
    PrintSettings.FooterFont.Style = []
    PrintSettings.PageNumSep = '/'
    SearchFooter.Color = clBtnFace
    SearchFooter.FindNextCaption = 'Find &next'
    SearchFooter.FindPrevCaption = 'Find &previous'
    SearchFooter.Font.Charset = DEFAULT_CHARSET
    SearchFooter.Font.Color = clWindowText
    SearchFooter.Font.Height = -11
    SearchFooter.Font.Name = 'MS Sans Serif'
    SearchFooter.Font.Style = []
    SearchFooter.HighLightCaption = 'Highlight'
    SearchFooter.HintClose = 'Close'
    SearchFooter.HintFindNext = 'Find next occurrence'
    SearchFooter.HintFindPrev = 'Find previous occurrence'
    SearchFooter.HintHighlight = 'Highlight occurrences'
    SearchFooter.MatchCaseCaption = 'Match case'
    SelectionColor = clMenuHighlight
    SelectionTextColor = clHighlightText
    ShowDesignHelper = False
    SortSettings.DefaultFormat = ssAutomatic
    SortSettings.HeaderColorTo = 16579058
    SortSettings.HeaderMirrorColor = 16380385
    SortSettings.HeaderMirrorColorTo = 16182488
    SyncGrid.SelectionRow = True
    SyncGrid.MoveColumn = True
    SyncGrid.MoveRow = True
    Version = '7.4.6.3'
    ColWidths = (
      95
      363
      64)
  end
  object btnBuscar: TButton
    Left = 187
    Top = 8
    Width = 70
    Height = 19
    Caption = 'Buscar'
    Enabled = False
    TabOrder = 1
    OnClick = btnBuscarClick
  end
  object btnAceptar: TButton
    Left = 261
    Top = 284
    Width = 70
    Height = 18
    Caption = '&Aceptar'
    Enabled = False
    TabOrder = 5
    OnClick = btnAceptarClick
  end
  object btnCancelar: TButton
    Left = 351
    Top = 284
    Width = 70
    Height = 18
    Cancel = True
    Caption = '&Cancelar'
    TabOrder = 6
    OnClick = btnCancelarClick
  end
end

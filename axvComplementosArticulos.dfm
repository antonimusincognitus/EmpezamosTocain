object axvfrmArticulosComplementarios: TaxvfrmArticulosComplementarios
  Left = 734
  Top = 160
  BorderStyle = bsSingle
  Caption = 'Articulos complementarios'
  ClientHeight = 291
  ClientWidth = 453
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Unicode MS'
  Font.Style = []
  Menu = AdvMainMenu1
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 14
  object PGCArticulos: TAdvPageControl
    Left = 7
    Top = 55
    Width = 441
    Height = 252
    ActivePage = tabAlternativas
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    ActiveColor = clBtnHighlight
    TabBackGroundColor = clBtnHighlight
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.4'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    object tabGeneral: TAdvTabSheet
      Caption = 'General'
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object cbxLineas: TAdvComboBox
        Left = 60
        Top = 73
        Width = 135
        Height = 22
        Color = clBtnHighlight
        Version = '1.5.1.1'
        Visible = True
        Flat = True
        EmptyTextStyle = []
        Ctl3D = False
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 14
        LabelCaption = 'Linea:      '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentCtl3D = False
        TabOrder = 0
        Text = 'Lineas'
      end
      object cbxUnidadMedida: TAdvComboBox
        Left = 60
        Top = 104
        Width = 135
        Height = 22
        Color = clBtnHighlight
        Version = '1.5.1.1'
        Visible = True
        Flat = True
        EmptyTextStyle = []
        Ctl3D = False
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 14
        LabelCaption = 'Unidades:'
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentCtl3D = False
        TabOrder = 1
        Text = 'Unidades de medida'
      end
      object cbxEstatus: TAdvComboBox
        Left = 296
        Top = 104
        Width = 126
        Height = 22
        Color = clBtnHighlight
        Version = '1.5.1.1'
        Visible = True
        Flat = True
        EmptyTextStyle = []
        Ctl3D = False
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 14
        LabelCaption = 'Estatus:  '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentCtl3D = False
        TabOrder = 2
        Text = 'Estatus'
      end
      object edtNombre: TAdvEditBtn
        Left = 60
        Top = 42
        Width = 135
        Height = 21
        EmptyTextStyle = []
        Flat = True
        FocusColor = clBtnHighlight
        LabelCaption = 'Nombre:  '
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
        BorderStyle = bsNone
        Color = clBtnHighlight
        ReadOnly = False
        TabOrder = 3
        Text = 'Nombre'
        Visible = True
        Version = '1.3.5.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        Etched = False
        Glyph.Data = {
          2E030000424D2E0300000000000036000000280000000D000000130000000100
          180000000000F802000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1F1F1F1FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F15C5C5C5C
          5C5CF1F1F1FFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFF1F1
          F15C5C5CADADADADADAD5C5C5CF1F1F1FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFF1F1F15C5C5CADADADFFFFFFFFFFFFADADAD5C5C5CF1F1F1FFFFFFFFFF
          FF00FFFFFFFFFFFFF1F1F15C5C5CADADADFFFFFFFFFFFFFFFFFFFFFFFFADADAD
          5C5C5CF1F1F1FFFFFF00FFFFFFFFFFFFFFFFFFC9C9C9FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFC9C9C9FFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00}
      end
      object edtClave: TAdvEditBtn
        Left = 60
        Top = 12
        Width = 135
        Height = 21
        EmptyTextStyle = []
        Flat = True
        FocusColor = clBtnHighlight
        LabelCaption = 'Clave:     '
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
        BorderStyle = bsNone
        Color = clBtnHighlight
        ReadOnly = False
        TabOrder = 4
        Text = 'Clave Principal'
        Visible = True
        Version = '1.3.5.0'
        ButtonStyle = bsButton
        ButtonWidth = 16
        Etched = False
        Glyph.Data = {
          96000000424D9600000000000000360000002800000007000000040000000100
          1800000000006000000000000000000000000000000000000000E1E1E1E1E1E1
          E1E1E1000000E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E10000000000000000
          00E1E1E1E1E1E1000000E1E1E1000000000000000000000000000000E1E1E100
          0000000000000000000000000000000000000000000000000000}
      end
      object cbAlmacenable: TCheckBox
        Left = 254
        Top = 15
        Width = 90
        Height = 16
        Caption = 'Almacenable'
        TabOrder = 5
      end
      object cbJuego: TCheckBox
        Left = 254
        Top = 33
        Width = 89
        Height = 16
        Caption = 'Juego (Kit)'
        TabOrder = 6
      end
      object cbPesarEnBascula: TCheckBox
        Left = 255
        Top = 51
        Width = 104
        Height = 16
        Caption = 'Pesar en bascula'
        TabOrder = 7
      end
      object edtPesoUnit: TAdvEdit
        Left = 305
        Top = 73
        Width = 113
        Height = 21
        EmptyTextStyle = []
        Flat = True
        FocusColor = clBtnHighlight
        LabelCaption = 'Peso unit:   '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Arial Unicode MS'
        LabelFont.Style = []
        Lookup.Font.Charset = DEFAULT_CHARSET
        Lookup.Font.Color = clWindowText
        Lookup.Font.Height = -11
        Lookup.Font.Name = 'Arial'
        Lookup.Font.Style = []
        Lookup.Separator = ';'
        BorderStyle = bsNone
        Color = clBtnHighlight
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
        Text = '0.000'
        Visible = True
        Version = '3.3.2.8'
      end
    end
    object tabAlternativas: TAdvTabSheet
      Caption = 'Alternativas'
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object sstrgAlternativas: TAdvStringGrid
        Left = 5
        Top = 2
        Width = 419
        Height = 219
        Cursor = crDefault
        ColCount = 3
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 15527152
        GridFixedLineColor = 13947601
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 16644337
        ActiveCellColorTo = 16576469
        ColumnHeaders.Strings = (
          'Clave'
          'Descripci'#243'n'
          'Comentarios')
        ControlLook.FixedGradientMirrorFrom = 16447735
        ControlLook.FixedGradientMirrorTo = 16052977
        ControlLook.FixedGradientHoverFrom = 16775139
        ControlLook.FixedGradientHoverTo = 16775139
        ControlLook.FixedGradientHoverMirrorFrom = 16772541
        ControlLook.FixedGradientHoverMirrorTo = 16508855
        ControlLook.FixedGradientDownFrom = 16377020
        ControlLook.FixedGradientDownTo = 16377020
        ControlLook.FixedGradientDownMirrorFrom = 16242317
        ControlLook.FixedGradientDownMirrorTo = 16109962
        ControlLook.FixedGradientDownBorder = 11440207
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
        FixedColWidth = 78
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        Look = glVista
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
        SearchFooter.ColorTo = 16052977
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
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.HeaderColor = 16579058
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '7.4.6.3'
        ColWidths = (
          78
          233
          131)
      end
    end
    object tabComplementos: TAdvTabSheet
      Caption = 'Complementos'
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object strgComplementos: TAdvStringGrid
        Left = 3
        Top = 2
        Width = 430
        Height = 222
        Cursor = crDefault
        ColCount = 4
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 0
        GridLineColor = 15527152
        GridFixedLineColor = 13947601
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ActiveCellColor = 16644337
        ActiveCellColorTo = 16576469
        ColumnHeaders.Strings = (
          'Clave'
          'Descripci'#243'n'
          'Pzs. Rel.'
          'Comentarios')
        ControlLook.FixedGradientMirrorFrom = 16447735
        ControlLook.FixedGradientMirrorTo = 16052977
        ControlLook.FixedGradientHoverFrom = 16775139
        ControlLook.FixedGradientHoverTo = 16775139
        ControlLook.FixedGradientHoverMirrorFrom = 16772541
        ControlLook.FixedGradientHoverMirrorTo = 16508855
        ControlLook.FixedGradientDownFrom = 16377020
        ControlLook.FixedGradientDownTo = 16377020
        ControlLook.FixedGradientDownMirrorFrom = 16242317
        ControlLook.FixedGradientDownMirrorTo = 16109962
        ControlLook.FixedGradientDownBorder = 11440207
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
        FixedColWidth = 78
        FixedRowHeight = 22
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        Look = glVista
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
        SearchFooter.ColorTo = 16052977
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
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.HeaderColor = 16579058
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '7.4.6.3'
        ColWidths = (
          78
          204
          37
          136)
      end
    end
  end
  object AdvDPAcciones: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 453
    Height = 70
    MinimumSize = 3
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    UseRunTimeHeight = False
    Version = '6.0.4.5'
    object ATBMenues: TAdvToolBar
      Left = 3
      Top = 1
      Width = 447
      Height = 24
      AllowFloating = True
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CompactImageIndex = -1
      FullSize = True
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      ParentOptionPicture = True
      ToolBarIndex = -1
      object AdvToolBarMenuButton1: TAdvToolBarMenuButton
        Left = 9
        Top = 2
        Width = 49
        Height = 23
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        DropDownMenu = AdvPopupMenu1
        Caption = '&Archivo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '6.0.4.5'
      end
      object AdvToolBarMenuButton2: TAdvToolBarMenuButton
        Left = 58
        Top = 2
        Width = 47
        Height = 23
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Caption = '&Edici'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '6.0.4.5'
      end
      object AdvToolBarMenuButton3: TAdvToolBarMenuButton
        Left = 105
        Top = 2
        Width = 25
        Height = 23
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Caption = '&Ver'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '6.0.4.5'
      end
    end
    object ATBBotones: TAdvToolBar
      Left = 3
      Top = 28
      Width = 409
      Height = 28
      AllowFloating = True
      Caption = 'Untitled'
      CaptionFont.Charset = DEFAULT_CHARSET
      CaptionFont.Color = clWindowText
      CaptionFont.Height = -11
      CaptionFont.Name = 'MS Sans Serif'
      CaptionFont.Style = []
      CompactImageIndex = -1
      TextAutoOptionMenu = 'Add or Remove Buttons'
      TextOptionMenu = 'Options'
      ToolBarStyler = AdvToolBarOfficeStyler1
      ParentOptionPicture = True
      ToolBarIndex = -1
      object ATBBGuardarCerrar: TAdvToolBarButton
        Left = 106
        Top = 2
        Width = 110
        Height = 24
        Action = GuardarCerrar
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.0.4.5'
      end
      object ATBBGuardarNuevo: TAdvToolBarButton
        Left = 216
        Top = 2
        Width = 113
        Height = 24
        Action = GuardarNuevo
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.0.4.5'
      end
      object ATBS1: TAdvToolBarSeparator
        Left = 329
        Top = 2
        Width = 9
        Height = 21
        LineColor = clBtnShadow
      end
      object ATBBModificar: TAdvToolBarButton
        Left = 338
        Top = 2
        Width = 24
        Height = 24
        Action = Modificar
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 5
        ParentFont = False
        Position = daTop
        Version = '6.0.4.5'
      end
      object ATBBEliminar: TAdvToolBarButton
        Left = 362
        Top = 2
        Width = 24
        Height = 24
        Action = Eliminar
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        Position = daTop
        Version = '6.0.4.5'
      end
      object ATBS2: TAdvToolBarSeparator
        Left = 386
        Top = 2
        Width = 9
        Height = 21
        LineColor = clBtnShadow
      end
      object AdvToolBarButton1: TAdvToolBarButton
        Left = 9
        Top = 2
        Width = 97
        Height = 24
        Action = NuevaAlternativa
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -12
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '6.0.4.5'
      end
    end
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
    AppColor.AppButtonColor = 13005312
    AppColor.AppButtonHoverColor = 16755772
    AppColor.TextColor = clWhite
    AppColor.HoverColor = 16246477
    AppColor.HoverTextColor = clBlack
    AppColor.HoverBorderColor = 15187578
    AppColor.SelectedColor = 15187578
    AppColor.SelectedTextColor = clBlack
    AppColor.SelectedBorderColor = 15187578
    Style = bsCustom
    BorderColor = 14731181
    BorderColorHot = 14731181
    ButtonAppearance.Color = 16640730
    ButtonAppearance.ColorTo = 14986888
    ButtonAppearance.ColorChecked = 9229823
    ButtonAppearance.ColorCheckedTo = 5812223
    ButtonAppearance.ColorDown = 5149182
    ButtonAppearance.ColorDownTo = 9556991
    ButtonAppearance.ColorHot = 13432063
    ButtonAppearance.ColorHotTo = 9556223
    ButtonAppearance.BorderDownColor = clNavy
    ButtonAppearance.BorderHotColor = clNavy
    ButtonAppearance.BorderCheckedColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    CaptionAppearance.CaptionColor = clHighlight
    CaptionAppearance.CaptionColorTo = clHighlight
    CaptionAppearance.CaptionBorderColor = clHighlight
    CaptionAppearance.CaptionColorHot = 13432063
    CaptionAppearance.CaptionColorHotTo = 9556223
    CaptionAppearance.CaptionTextColorHot = clBlack
    CaptionFont.Charset = DEFAULT_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Segoe UI'
    CaptionFont.Style = []
    ContainerAppearance.LineColor = clBtnShadow
    ContainerAppearance.Line3D = True
    Color.Color = 16640730
    Color.ColorTo = 14986888
    Color.Direction = gdVertical
    Color.Mirror.Color = 16440004
    Color.Mirror.ColorTo = 16440004
    Color.Mirror.ColorMirror = 16372409
    Color.Mirror.ColorMirrorTo = 16572878
    ColorHot.Color = 16773606
    ColorHot.ColorTo = 16444126
    ColorHot.Direction = gdVertical
    ColorHot.Mirror.Color = 16507602
    ColorHot.Mirror.ColorTo = 16507602
    ColorHot.Mirror.ColorMirror = 16506056
    ColorHot.Mirror.ColorMirrorTo = 16639959
    CompactGlowButtonAppearance.BorderColor = 14727579
    CompactGlowButtonAppearance.BorderColorHot = 10079963
    CompactGlowButtonAppearance.BorderColorDown = 4548219
    CompactGlowButtonAppearance.BorderColorChecked = clBlack
    CompactGlowButtonAppearance.Color = 15653832
    CompactGlowButtonAppearance.ColorTo = 16178633
    CompactGlowButtonAppearance.ColorChecked = 11918331
    CompactGlowButtonAppearance.ColorCheckedTo = 7915518
    CompactGlowButtonAppearance.ColorDisabled = 15921906
    CompactGlowButtonAppearance.ColorDisabledTo = 15921906
    CompactGlowButtonAppearance.ColorDown = 7778289
    CompactGlowButtonAppearance.ColorDownTo = 4296947
    CompactGlowButtonAppearance.ColorHot = 15465983
    CompactGlowButtonAppearance.ColorHotTo = 11332863
    CompactGlowButtonAppearance.ColorMirror = 15586496
    CompactGlowButtonAppearance.ColorMirrorTo = 16245200
    CompactGlowButtonAppearance.ColorMirrorHot = 5888767
    CompactGlowButtonAppearance.ColorMirrorHotTo = 10807807
    CompactGlowButtonAppearance.ColorMirrorDown = 946929
    CompactGlowButtonAppearance.ColorMirrorDownTo = 5021693
    CompactGlowButtonAppearance.ColorMirrorChecked = 10480637
    CompactGlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    CompactGlowButtonAppearance.ColorMirrorDisabled = 11974326
    CompactGlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    CompactGlowButtonAppearance.GradientHot = ggVertical
    CompactGlowButtonAppearance.GradientMirrorHot = ggVertical
    CompactGlowButtonAppearance.GradientDown = ggVertical
    CompactGlowButtonAppearance.GradientMirrorDown = ggVertical
    CompactGlowButtonAppearance.GradientChecked = ggVertical
    DockColor.Color = 16105376
    DockColor.ColorTo = 16440004
    DockColor.Direction = gdHorizontal
    DockColor.Steps = 128
    FloatingWindowBorderColor = 9516288
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Segoe UI'
    Font.Style = []
    GlowButtonAppearance.BorderColor = 14727579
    GlowButtonAppearance.BorderColorHot = 10079963
    GlowButtonAppearance.BorderColorDown = 4548219
    GlowButtonAppearance.BorderColorChecked = clBlack
    GlowButtonAppearance.Color = 15653832
    GlowButtonAppearance.ColorTo = 16178633
    GlowButtonAppearance.ColorChecked = 11918331
    GlowButtonAppearance.ColorCheckedTo = 7915518
    GlowButtonAppearance.ColorDisabled = 15921906
    GlowButtonAppearance.ColorDisabledTo = 15921906
    GlowButtonAppearance.ColorDown = 7778289
    GlowButtonAppearance.ColorDownTo = 4296947
    GlowButtonAppearance.ColorHot = 15465983
    GlowButtonAppearance.ColorHotTo = 11332863
    GlowButtonAppearance.ColorMirror = 15586496
    GlowButtonAppearance.ColorMirrorTo = 16245200
    GlowButtonAppearance.ColorMirrorHot = 5888767
    GlowButtonAppearance.ColorMirrorHotTo = 10807807
    GlowButtonAppearance.ColorMirrorDown = 946929
    GlowButtonAppearance.ColorMirrorDownTo = 5021693
    GlowButtonAppearance.ColorMirrorChecked = 10480637
    GlowButtonAppearance.ColorMirrorCheckedTo = 5682430
    GlowButtonAppearance.ColorMirrorDisabled = 11974326
    GlowButtonAppearance.ColorMirrorDisabledTo = 15921906
    GlowButtonAppearance.GradientHot = ggVertical
    GlowButtonAppearance.GradientMirrorHot = ggVertical
    GlowButtonAppearance.GradientDown = ggVertical
    GlowButtonAppearance.GradientMirrorDown = ggVertical
    GlowButtonAppearance.GradientChecked = ggVertical
    GroupAppearance.Background = clInfoBk
    GroupAppearance.BorderColor = 12763842
    GroupAppearance.Color = 16640730
    GroupAppearance.ColorTo = 15851212
    GroupAppearance.ColorMirror = 15851212
    GroupAppearance.ColorMirrorTo = 16640730
    GroupAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.Font.Color = clWindowText
    GroupAppearance.Font.Height = -11
    GroupAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.Font.Style = []
    GroupAppearance.Gradient = ggVertical
    GroupAppearance.GradientMirror = ggVertical
    GroupAppearance.TextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionColor = 15915714
    GroupAppearance.CaptionAppearance.CaptionColorTo = 15784385
    GroupAppearance.CaptionAppearance.CaptionTextColor = clBlack
    GroupAppearance.CaptionAppearance.CaptionColorHot = 16769224
    GroupAppearance.CaptionAppearance.CaptionColorHotTo = 16772566
    GroupAppearance.CaptionAppearance.CaptionTextColorHot = clBlack
    GroupAppearance.PageAppearance.BorderColor = 12763842
    GroupAppearance.PageAppearance.Color = 14086910
    GroupAppearance.PageAppearance.ColorTo = 16382457
    GroupAppearance.PageAppearance.ColorMirror = 16382457
    GroupAppearance.PageAppearance.ColorMirrorTo = 16382457
    GroupAppearance.PageAppearance.Gradient = ggVertical
    GroupAppearance.PageAppearance.GradientMirror = ggVertical
    GroupAppearance.PageAppearance.ShadowColor = 12888726
    GroupAppearance.PageAppearance.HighLightColor = 16644558
    GroupAppearance.TabAppearance.BorderColor = clHighlight
    GroupAppearance.TabAppearance.BorderColorHot = clHighlight
    GroupAppearance.TabAppearance.BorderColorSelected = 10534860
    GroupAppearance.TabAppearance.BorderColorSelectedHot = 10534860
    GroupAppearance.TabAppearance.BorderColorDisabled = clNone
    GroupAppearance.TabAppearance.BorderColorDown = clNone
    GroupAppearance.TabAppearance.Color = clBtnFace
    GroupAppearance.TabAppearance.ColorTo = clWhite
    GroupAppearance.TabAppearance.ColorSelected = 10412027
    GroupAppearance.TabAppearance.ColorSelectedTo = 12249340
    GroupAppearance.TabAppearance.ColorDisabled = clNone
    GroupAppearance.TabAppearance.ColorDisabledTo = clNone
    GroupAppearance.TabAppearance.ColorHot = 13432063
    GroupAppearance.TabAppearance.ColorHotTo = 13432063
    GroupAppearance.TabAppearance.ColorMirror = clWhite
    GroupAppearance.TabAppearance.ColorMirrorTo = clWhite
    GroupAppearance.TabAppearance.ColorMirrorHot = 13432063
    GroupAppearance.TabAppearance.ColorMirrorHotTo = 9556223
    GroupAppearance.TabAppearance.ColorMirrorSelected = 12249340
    GroupAppearance.TabAppearance.ColorMirrorSelectedTo = 13955581
    GroupAppearance.TabAppearance.ColorMirrorDisabled = clNone
    GroupAppearance.TabAppearance.ColorMirrorDisabledTo = clNone
    GroupAppearance.TabAppearance.Font.Charset = DEFAULT_CHARSET
    GroupAppearance.TabAppearance.Font.Color = clWindowText
    GroupAppearance.TabAppearance.Font.Height = -11
    GroupAppearance.TabAppearance.Font.Name = 'Segoe UI'
    GroupAppearance.TabAppearance.Font.Style = []
    GroupAppearance.TabAppearance.Gradient = ggVertical
    GroupAppearance.TabAppearance.GradientMirror = ggVertical
    GroupAppearance.TabAppearance.GradientHot = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorHot = ggVertical
    GroupAppearance.TabAppearance.GradientSelected = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorSelected = ggVertical
    GroupAppearance.TabAppearance.GradientDisabled = ggVertical
    GroupAppearance.TabAppearance.GradientMirrorDisabled = ggVertical
    GroupAppearance.TabAppearance.TextColor = clBlack
    GroupAppearance.TabAppearance.TextColorHot = clBlack
    GroupAppearance.TabAppearance.TextColorSelected = clBlack
    GroupAppearance.TabAppearance.TextColorDisabled = clWhite
    GroupAppearance.TabAppearance.ShadowColor = 10796223
    GroupAppearance.TabAppearance.HighLightColor = 16775871
    GroupAppearance.TabAppearance.HighLightColorHot = 16643309
    GroupAppearance.TabAppearance.HighLightColorSelected = 6540536
    GroupAppearance.TabAppearance.HighLightColorSelectedHot = 12451839
    GroupAppearance.TabAppearance.HighLightColorDown = 16776144
    GroupAppearance.ToolBarAppearance.BorderColor = 13423059
    GroupAppearance.ToolBarAppearance.BorderColorHot = 13092807
    GroupAppearance.ToolBarAppearance.Color.Color = 15530237
    GroupAppearance.ToolBarAppearance.Color.ColorTo = 16382457
    GroupAppearance.ToolBarAppearance.Color.Direction = gdHorizontal
    GroupAppearance.ToolBarAppearance.ColorHot.Color = 15660277
    GroupAppearance.ToolBarAppearance.ColorHot.ColorTo = 16645114
    GroupAppearance.ToolBarAppearance.ColorHot.Direction = gdHorizontal
    PageAppearance.BorderColor = 14922381
    PageAppearance.Color = 16440004
    PageAppearance.ColorTo = 16440004
    PageAppearance.ColorMirror = 16372409
    PageAppearance.ColorMirrorTo = 16640215
    PageAppearance.Gradient = ggVertical
    PageAppearance.GradientMirror = ggVertical
    PageAppearance.ShadowColor = 13475194
    PageAppearance.HighLightColor = 16644558
    PagerCaption.BorderColor = 15780526
    PagerCaption.Color = 14986888
    PagerCaption.ColorTo = 14986888
    PagerCaption.ColorMirror = 14986888
    PagerCaption.ColorMirrorTo = 14986888
    PagerCaption.Gradient = ggVertical
    PagerCaption.GradientMirror = ggVertical
    PagerCaption.TextColor = clGray
    PagerCaption.TextColorExtended = clBlue
    PagerCaption.Font.Charset = DEFAULT_CHARSET
    PagerCaption.Font.Color = clWindowText
    PagerCaption.Font.Height = -13
    PagerCaption.Font.Name = 'Segoe UI'
    PagerCaption.Font.Style = []
    QATAppearance.BorderColor = 9516288
    QATAppearance.Color = 16640730
    QATAppearance.ColorTo = 14986888
    QATAppearance.FullSizeBorderColor = 14986888
    QATAppearance.FullSizeColor = 14986888
    QATAppearance.FullSizeColorTo = 14986888
    RightHandleColor = 15836789
    RightHandleColorTo = 9516288
    RightHandleColorHot = 13891839
    RightHandleColorHotTo = 7782911
    RightHandleColorDown = 557032
    RightHandleColorDownTo = 8182519
    TabAppearance.BorderColor = clNone
    TabAppearance.BorderColorHot = clHighlight
    TabAppearance.BorderColorSelected = clBlack
    TabAppearance.BorderColorSelectedHot = 6343929
    TabAppearance.BorderColorDisabled = clNone
    TabAppearance.BorderColorDown = clNone
    TabAppearance.Color = clBtnFace
    TabAppearance.ColorTo = clWhite
    TabAppearance.ColorSelected = 16571588
    TabAppearance.ColorSelectedTo = 16445929
    TabAppearance.ColorDisabled = clWhite
    TabAppearance.ColorDisabledTo = clSilver
    TabAppearance.ColorHot = 13432063
    TabAppearance.ColorHotTo = 13432063
    TabAppearance.ColorMirror = clWhite
    TabAppearance.ColorMirrorTo = clWhite
    TabAppearance.ColorMirrorHot = 13432063
    TabAppearance.ColorMirrorHotTo = 9556223
    TabAppearance.ColorMirrorSelected = 16445929
    TabAppearance.ColorMirrorSelectedTo = 16181984
    TabAppearance.ColorMirrorDisabled = clWhite
    TabAppearance.ColorMirrorDisabledTo = clSilver
    TabAppearance.Font.Charset = DEFAULT_CHARSET
    TabAppearance.Font.Color = clWindowText
    TabAppearance.Font.Height = -11
    TabAppearance.Font.Name = 'Segoe UI'
    TabAppearance.Font.Style = []
    TabAppearance.Gradient = ggVertical
    TabAppearance.GradientMirror = ggVertical
    TabAppearance.GradientHot = ggVertical
    TabAppearance.GradientMirrorHot = ggVertical
    TabAppearance.GradientSelected = ggVertical
    TabAppearance.GradientMirrorSelected = ggVertical
    TabAppearance.GradientDisabled = ggVertical
    TabAppearance.GradientMirrorDisabled = ggVertical
    TabAppearance.TextColor = clBlack
    TabAppearance.TextColorHot = clBlack
    TabAppearance.TextColorSelected = clBlack
    TabAppearance.TextColorDisabled = clGray
    TabAppearance.ShadowColor = 10708799
    TabAppearance.HighLightColor = 16775871
    TabAppearance.HighLightColorHot = 16643309
    TabAppearance.HighLightColorSelected = 6540536
    TabAppearance.HighLightColorSelectedHot = 12451839
    TabAppearance.HighLightColorDown = 16776144
    TabAppearance.BackGround.Color = 14986888
    TabAppearance.BackGround.ColorTo = 16440004
    TabAppearance.BackGround.Direction = gdHorizontal
    Left = 456
  end
  object ActionList1: TActionList
    Images = imgMenus
    Left = 427
    Top = 1
    object Guardar: TAction
      Caption = 'Guardar'
      ImageIndex = 6
      ShortCut = 16455
    end
    object GuardarCerrar: TAction
      Caption = 'Guardar y cerrar'
      ImageIndex = 6
      ShortCut = 122
    end
    object GuardarNuevo: TAction
      Caption = 'Guardar y nuevo'
      ImageIndex = 7
      ShortCut = 123
    end
    object Modificar: TAction
      Caption = 'Modificar'
      ImageIndex = 5
      ShortCut = 16461
    end
    object Eliminar: TAction
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16453
    end
    object NuevaAlternativa: TAction
      Caption = 'Nueva alternativa'
    end
    object NuevoComplemento: TAction
      Caption = 'Nuevo complemento'
    end
    object Nuevo: TAction
      Caption = 'Nuevo'
      ImageIndex = 10
      ShortCut = 16462
    end
    object EliminarAlternativa: TAction
      Caption = 'Eliminar alternativa'
    end
    object EliminarComplemento: TAction
      Caption = 'Eliminar Complemento'
    end
  end
  object ImgLstgrdArticulos: TImageList
    ShareImages = True
    Left = 399
    Top = 1
    Bitmap = {
      494C010104000900040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000003000000001002000000000000030
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BEAE
      6D00D0C59900EAE4CF00EAE4CF000000000000000000BEBEBE00BEBEBE00ACB1
      B300AEB5B700BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000006BB5730042A4
      3E005CBA600072C8790000000000000000000000000000000000BEAE6D00D0C5
      9900EAE4CF00EEEAD800E5E0CB00E5E0CB0000000000A8AAAB006CA9CD007BB8
      DB0082B2C900A7BCC700A1EBEB0088FFFF0088FFFF0088FFFF0088FFFF0088FF
      FF0088FFFF0088FFFF00BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000009AB77D00BAC48B00E2D0
      A000C0CC980063C16D0093D7990086C589000000000000000000BEAE6D00D0C5
      9900DCD4AE00DDD5B200D6CEA800D0C69A00000000006CA9CD0083C2E4009AD6
      F40082B2C9006B9CB6004F7D9900BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE0088FFFF00BEBEBE00000000000000000000000000DCDCDC00DCDC
      DC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDCDC00DCDC
      DC00DCDCDC00DCDCDC0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E8D5AC00E9D7AE00F1E6
      CE00DEB48C009AC584006EBC750076CB7D000000000000000000BEAE6D00D0C6
      9900DBD3AD00DBD2AB00CEC49600D0C69A0086BCDA007FC0E3007CB7D6007FBD
      DF00679CBA006C9DB700639AB800639AB80088FFFF0088FFFF0088FFFF0088FE
      FE00BEBEBE0088FFFF00BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000DEDEDE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E4D6AF00F1E9D200E9CE
      B400E8D0B900DEB68E00C6CFA10098C887000000000000000000BEAE6D00D3CA
      A000DAD1AA00D9D1AA00CFC59900D0C69A009CCFE70058A3CB0057A0C8005CA5
      CF004985A900598EAC005C93B3005C93B300BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE0088FFFF00BEBEBE000000000000000000E1E1E100E1E1E100E1E1
      E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E100E1E1E10000000000E1E1
      E100E1E1E10000000000E1E1E100000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EEE7D700EBD3BD00E4C3
      9B00F5F5F500E7CBAF00E2B89200E2BA93000000000000000000BEAE6D00DDD5
      B400DDD5B100D9D0A800D0C69A00D0C69A0082B9D80058A0CB0059A2CC0060A4
      CB004B7F9E00467E9F004581A6004581A60088FFFF0088FFFF0088FFFF0088FE
      FE00BEBEBE0088FFFF00BEBEBE000000000000000000E3E3E300E3E3E300E3E3
      E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E300E3E3E30000000000E3E3
      E300E3E3E30000000000E3E3E300000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E5C9B800DFB89000F7F0
      E200F0EBD800E7D7AF00E2BE9400E2BA93000000000000000000C7B98300DCD5
      B500E7E1C800E1DABC00D2C89E00D0C69A006AA5C8005097C2006EB0D50097D0
      ED0091BED400598BA700326E9200326E9200BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE0088FFFF00BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000DBAE8800F0E6CD00FBFB
      F900E8D9B300E5D7B000E5CEA300E1B58C000000000000000000C7B98300DCD4
      B300E4DDC000E5DFC300DCD5B400D0C69A006CA5C7007BB8DB0089C6E60083C5
      E6007AB8D8007EBADC00508AB700508AB70088FFFF0088FFFF0088FFFF0088FE
      FE00BEBEBE0088FFFF00BEBEBE000000000000000000E8E8E800E8E8E800E8E8
      E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8E800E8E8
      E800E8E8E80000000000E8E8E800000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D4CDB600FAFBFD00F0E9
      D400E8DCBD00F7F7F800EEE9DB00E4C299000000000000000000C7B98300E3DD
      C200E9E4CD00E8E2CA00E0D9BC00EBE7D6000000000077B6D90077B6D90077B6
      D90077B6D90077B6D9007DBDD100BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE0088FFFF00BEBEBE000000000000000000EBEBEB00EBEBEB00EBEB
      EB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEBEB00EBEB
      EB00EBEBEB0000000000EBEBEB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFB9A800E9E1C800E7DB
      B700E9DFC000F3EFE300F8F8FA00F3F0ED000000000000000000D0C69A00E3DC
      C200EAE5CE00E9E4CD00E2DBC000E2DBC00000000000BEBEBE0077B6D90077B6
      D90077B6D90083C5E600B8FFFF00B8FFFF0088FFFF0088FFFF0088FFFF0088FE
      FE00BEBEBE0088FFFF00BEBEBE00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000EDEDED0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFB9A800E2DABC00EBE3
      C800E6DCB800E9DFBF00F9F9FA00F8F8F8000000000000000000D0C69A00E3DD
      C200E7E1C800E8E2CA00E2DBC000E5DFC60000000000BEBEBE00BCFFFF00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE0088FFFF00BEBEBE00000000000000000000000000F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F000F0F0F0000000
      000000000000F0F0F000F0F0F000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFB9A800ECE8D800F0EB
      D700E7DEBB00E8DDB800F1ECDB00F7F7F4000000000000000000E8E4D000E4DE
      C100E5DEBD00E8E2C400E5DFC600E5DFC60000000000BEBEBE00BCFFFF00BEBE
      BE00BCFFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00BCFFFF00B8FF
      FF00BEBEBE00BCFFFF00BEBEBE0000000000000000000000000000000000F2F2
      F200F2F2F2000000000000000000000000000000000000000000F2F2F200F2F2
      F200000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFB9A800EDE6D200BFB9
      A8007E7B7400BDB8A500DCD4B800D4CDB600000000000000000000000000C0BC
      C9008480BB009994BD00C0BCC9000000000000000000BEBEBE00BCFFFF00BEBE
      BE00BCFFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00000000000000000000000000000000000000
      0000F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5F500F5F5
      F500F5F5F5000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BFB9A800BFB9A800E5D3
      A700DFCB9E007E7B740096979600D4CDB6000000000000000000000000007777
      DB000707C4001919C3007777DB000000000000000000BEBEBE00BCFEFE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BCFFFF00B8FFFF00BEBEBE00000000000000000000000000000000000000
      000000000000F7F7F700F7F7F700000000000000000000000000000000000000
      0000F7F7F700F7F7F70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000096979600E6D8
      B100E6D5AA00D4C39A00BFB9A800000000000000000000000000000000004646
      CE004646CE006868D6006868D6000000000000000000BEBEBE00BCFFFF00B8FF
      FF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00B8FFFF00BEBE
      BE00BCFFFF00BEBEBE0000000000000000000000000000000000000000000000
      00000000000000000000FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFAFA00FAFA
      FA00FAFAFA00FAFAFA0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000009697
      960096979600BFB9A80000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BEBEBE00BEBEBE00BEBE
      BE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBEBE00BEBE
      BE00BEBEBE000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000300000000100010000000000800100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFE18001FFFFFFFFC3C08001C003FFFF
      80C080018001FFFF80C000010000FFFF80C000010000FFFF80C000010000FFFF
      80C000010000FEFF80C000010000FC7F80C080010000F83F80C080010000F01F
      80C080018000FFFF80C08001C000FFFF80E18001E003FFFF80E18001F001FFFF
      C1E18003F801FFFFE3FF8007FC01FFFF00000000000000000000000000000000
      000000000000}
  end
  object imgMenus: TImageList
    Left = 371
    Top = 1
    Bitmap = {
      494C01010B000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000004000000001002000000000000040
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8522E00A8522E0000000000000000000000
      00000000000000000000000000000000000000000000000000007C644C007959
      48007C594A006E5A4A0069543E006A5138006A4D38006A48390063453200573F
      2600573F2600624933000000000000000000FFFFFF00654E37005F472F005F47
      2F005F472F005F472F005F472F005F472F005F472F005F472F005F472F005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8522E00A8522E0000000000000000000000
      00000000000000000000000000000000000000000000000000007C644C007959
      48007C594A006E5A4A0069543E006A5138006A4D38006A48390063453200573F
      2600573F2600624933000000000000000000FFFFFF00E5E1DD00B0A29300A594
      8300A5948300A5948300A5948300A5948300A5948300A5948300998774005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8522E00A8522E00A8522E00A8522E00000000000000
      000000000000000000000000000000000000000000009D857B00DDCCBC00AB9B
      8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B
      8B00AB9B8B00AB9B8B005F47300000000000FFFFFF00FEFDFC00FEFDFC00EAE2
      E300E2DDDB00DFD8CF00DFD2C500DACABF00D3C1BA00CAB6AA00A1907E005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8522E00A8522E00ED875400C2694200C2694200C2694200A8522E00A852
      2E000000000000000000000000000000000000000000A78E8800F7DFD600FBF4
      F300F7DFD600F7DFD600F7DFD600F7DFD600F7DFD600F7DFD60001980000089D
      000020921500745343005E462E008D786800FFFFFF00FEFDFC00FEFDFC00FEFD
      FC00F9F4F200F1EEEA00EEE4DF00EBD9D400E5D0C800D3C0B300A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8522E00A8522E00ED875400C2694200C2694200C2694200A8522E00A852
      2E0000000000000000000000000000000000AF918200D6CBC200FFFFFF00FFFF
      FD00FFFDFB00FFFDFC00FFFFFF00FBF4F300FCEEEB00F7DFD60000FF0F0000FF
      FF00178F0500825B4D006A4A3900614B3300FFFFFF00FEFDFC00FFFFFF00FEFD
      FC00FEFDFC00FAF4F200F3E9E700EFDFDC00E9D8D200D4C6BA00A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A852
      2E00FDA27800FDA27800ED875400ED875400ED875400C2694200C2694200C269
      4200A8522E00000000000000000000000000AB887800EEE5DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFF9F900F7DFD60000FF0F0000FF
      0F0018920B0090665E006B5847005C442B00B6A39000FEFDFC00FFFFFF00FFFF
      FF00FEFDFC00FEF7F500F6EEEB00F0E6E300ECDED800D9C9BE00A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8522E00A8522E00FDA2
      7800FF9F7200FF9F7200FF9F7200ED875400ED875400ED875400C2694200C269
      4200C2694200A8522E00A8522E0000000000AB907900D6C9BA00DBC7C200D0C2
      B700C4B8AC00C1B0A000B9A79D00AE9E9300A9928700A9928700A8908700846C
      5B00846C5B0091776B007761570068503700BDA69500FEFDFC00FFFFFF00FFFF
      FF00FEFDFC00FEFDFC00F9F5F100F2ECE700EFE1DB00DECBC400A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8522E00A8522E00FDA2
      7800FF9F7200FF9F7200FF9F7200ED875400ED875400ED875400C2694200C269
      4200C2694200A8522E00A8522E0000000000B5968200FAF6F300F9F7F600F8F5
      F400F5F4F100F5F3F000F4F1F000F2F0EF00F1EEEB00F2EBE900F0E9EA00EEE8
      E700E8E1E000957E7200886D5B00785B4800C0AA9C00FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FEFDFC00FEFDFC00F6F0ED00F0E6E100E0D0C900A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8522E00ED875400ED875400ED87
      5400C2694200C2694200FF9F7200FF9F7200FF9F7200ED875400A8522E00A852
      2E00A8522E00A8522E00A8522E00A8522E00C9B1A700D4C4B400E4D3C900DCCD
      C900E2D0C800DDCBC100D3C1B700CBB9AF00C3AEA300BAA39700AE9C9300A9A1
      9700B2A49800A7928400947A61007D5C4D00C3AEA000FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFDFC00FCF9F900F2ECE800E0D5CE00A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8522E00ED875400ED875400ED87
      5400C2694200C2694200FF9F7200FF9F7200FF9F7200ED875400A8522E00A852
      2E00A8522E00A8522E00A8522E00A8522E00CEBDB500BFAC9E00C3AA9900CBB1
      A900E0CEC500E1CCC700D8C4BF00D2BAB300C4B1A400B9A69800A89087008872
      6400846C5B00AD9D8D00AE99850079584800CAB1A000FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFDFF00FCF9F800F2EEE900D7CEC700A29180005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800FF9F7200FF9F7200FF9F7200A8522E00A852
      2E000000000000000000000000000000000000000000DED4D000CEC2B800F7F4
      F200FCFBFA00FDFAFB00F9F7F700F7F4F300F6F2EE00F4F0EC00F2EBE900B69F
      99007B5F5100AB9B8B00B9A699008F756400D0B4A100FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FAF8F500E2DBD400B7AA9E00998774005F47
      2F00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800F8B69800F8B69800FF9F7200A8522E00A852
      2E00000000000000000000000000000000000000000000000000ECE2E200E9E2
      DC00FDFCFB00FCFAF900E6E1DB00DED9D400DFD3D000DFCDC800E5D5CC00D3C1
      BB0090746B0082615300B9A49E00CEBDB500D0B8A800FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00EDE8E50069513A0069513A0069513A006951
      3A00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800F8B69800F8B69800FF9F7200A8522E00A852
      2E0000000000000000000000000000000000000000000000000000000000E2D2
      C800F3EDEA00FEFDFD00FFFFFF00FBFBFB00FAF8F900FAF5F600F7F0EE00F2EC
      E700C3ADA4007D625200B5A1980000000000D0BBB000FEFDFC00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FEFDFC00D0B4A900F3F1EE00EEEBE900D9D2CD00927C
      6B00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800F8B69800F8B69800F8B69800F8B69800C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      0000D4C0B900F7F4F200FCFBFB00E3DEDB00D6D0C900D7CBC400D2BFBC00D3C8
      C700D4CBC200887264008565560000000000D5C0B000FEFDFC00FEFDFC00FEFD
      FC00FEFDFC00FEFDFC00FEFDFC00D0B4A900F6F3F100E6E2DF008F7B6D00FBE5
      D300FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800FDA27800C2694200C2694200C2694200C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000E0CECE00F9F5F500FAF9F700FBF9F700FBF9F700FBF8F900F7EF
      F000E7DAD100C6AEA3008A6D5C0000000000E0C0B000FEFDFC00FEFDFC00FEFD
      FC00FEFDFC00FEFDFC00FEFDFC00D0B4A900E9E3DF008F7A6900FBE6D500FBE6
      D500FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800FDA27800C2694200C2694200C2694200C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6C6BA00CDBDAC00CEBDAD00CEBDAD00CEBEAD00CEBE
      AE00D0C0B000D2C3B300D8CBBD0000000000E0C0B000E0C0B000E0C0B000E0C0
      B000E0C0B000D6C0B000D0BCB000D0B4A900D5B8AA00FCE7D600FCE7D600FCE7
      D600FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000004637910046379100A09E
      9600000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD686100B0574E00A350
      4F00A2505200A34D4E009A4548008B3E46008B3E34008C3E3500843D3B007E38
      3F007D364000763640006B373C006F372C000000000000000000000000000000
      00000000000000000000C0A89000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000F0E8E000F0D8D000B0A09000B0A09000AA9EDE005436D9005436D9004637
      9100898690000000000000000000000000000000000000000000000000000000
      0000000000007E6FB9007E6FB900472AC600000000007F7F7F00C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD667000EA8B8A00E2838400C057
      3D00713317006C5E5200C9BDB700BFB3AD00CBB6B600D1C4BC00636363007D3F
      3700A03E2E009E3B2F00923633006B373E000000000000000000000000000000
      00000000000000000000C0A8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000F0E8E000F0E0E000B0A09000B0A09000AA9EDE004E2EE2004E2EE200300E
      C70050457E00A19FA100A19FA100000000000000000000000000000000000000
      0000745FD1004124D1004124D1009182CC007F7F7F00B0E4EF009DCAF50094B5
      D500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD696B00F9949B00F18B8700E279
      72009C5F56005B5144006A655700A6918A00EFE0E100F0E9E20096908400934F
      4000A03D3300A03E3600993B3100793640000000000000000000000000000000
      00000000000000000000C0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      FF00F0F0F000F0E8E000B0A09000B0A09000AA9EDE004E2EE2004E2EE200300E
      C70050457E00A19FA100A19FA100000000000000000000000000000000000000
      0000745FD1004124D1004124D1009182CC0000000000B0E4EF00B0E4EF0069A3
      D1005992B6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC716A00FD9B9E00F2908E00F18A
      8400B06F6900463B330017181000665C4F00FFEAE600FCEEE2009B9681009A54
      4500AB423A00A6423C00983D39007D3C3F000000000000000000000000000000
      00000000000000000000D0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF8F000F0F0F000B0A09000B0A0900000000000AA9EDE00AA9EDE00421F
      DF003B20B100635A8600635A8600AEADAC00000000000000000000000000806C
      D8005034CA00A89DD600A89DD60000000000000000000000000073ACCC005497
      C200599CC600649FC40000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC737300FCA1A600F99B9C00F691
      8F00AF716A0050413B00332B2600584E4200B29B9300B0A19100847A6900A259
      4E00B64C4600AD4844009F413E007C3E3F00CD8D8F00C2696300AE554E00964A
      46009D5A59009B5D6000D0B8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B0A09000B0A09000B0A09000000000000000000000000000AA9E
      DE004C2DD800472FAD00472FAD00676084007A70A000624ACC00624ACC00583E
      CD00AFA3DC0000000000000000000000000000000000000000000000000072AC
      CD0065A5CC006BAAD10070ACCF00000000000000000000000000000000000000
      000000000000000000000000000000000000D2767B00FBA8AE00FFA8A900FD9E
      9E00C9817E009C696300A06B630099656100935D5C008C5E550097656200B45E
      5C00BC565300B34F4B00A647420083413E00D6717600ED8B8B00D76F62007D4C
      3B007E736800AC9D9600D0B8B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B0A090005F472F005F472F005F472F000000000000000000000000000000
      0000AA9EDE005537D6005537D6003E25B1003B22B2004C33BF004C33BF00A79D
      D100000000000000000000000000000000000000000000000000000000000000
      000091BDD9007CB6D90080BADC0070ACCF000000000000000000000000000000
      000000000000000000000000000000000000DE7D7E00FDAFB000FFB5B400F89D
      9D00EF8B8A00EB847D00E97B7400DD747100DB6E6F00CE676200CB5F5F00BD58
      5200BD574F00BC565200AB4E4C008E463D00D8797600F6939400EE8882009360
      59003B352C0063594E00D0C0B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0A89000D0C8C0005F472F005F472F000000000000000000000000000000
      000000000000755DDA00755DDA003614D4002F0FC8005442A7005442A700A9A6
      AE00000000000000000000000000000000000000000000000000000000000000
      00000000000070ABCC0095C8E50095CAE60070ACCF0000000000000000000000
      000000000000000000000000000000000000DD858D00FDB6BF00FEB7B100E080
      7D00C6625A00BF625500C05C5200BF544400B0563400B24E3500A4472800A03F
      1700AF4C3700C05C5800B7534C008D463F00D9808200FBA0A300F8969500A16A
      640058433D00614D4400E0C0B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0A8A0005F472F0000000000000000000000000000000000000000000000
      000000000000755DDA00755DDA003614D4002F0FC8005442A7005442A700A9A6
      AE00000000000000000000000000000000000000000000000000000000000000
      000000000000000000009AC7E000ACD6ED00A8D7EF0070ACCF00000000000000
      000000000000000000000000000000000000DD8C8B00FFC3C200D46D6600EDCC
      C800FFFFFF00FFFFFF00FFFFFA00F1FAFB00F4F3EB00F5E3DC00E7DBCD00E6DA
      D300C0816700A73D2000B65C61008B444F00E1868900FDACAE00FBA1A100D682
      7E00C4746D00BD6E6900E0C0B000E0C0B000E0C0B000E0C0B000D0C0B000D0B8
      B000D0B0A0000000000000000000000000000000000000000000000000000000
      0000BDB4DC00644CCE00644CCE005134D2005539D0005842B7005842B7006F64
      9700A9A7AD000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009ECEE900C1E3F500B9E1F60070ACCF000000
      000000000000000000000000000000000000DC949C00FFC1C200D6777700ECCA
      C900FFFFFF00FFFEFE00FEFCF900FCF6ED00EEEFF000F0E7E000EFD9D100E7D7
      CA00BD856B00AE462C00C7635E009C4D4E00E58F9600FDB5B600EC939000CE6B
      6400CA665C00C75D5200BA5A4200B3503A00A8472900B5514300B95651009648
      410000000000000000000000000000000000000000000000000000000000B9AF
      D9005E44CD005035C8005035C800AA9EDE00000000007C64E0007C64E0005C44
      C30065569E009C99A5009C99A500000000000000000000000000000000000000
      000000000000000000000000000000000000A4D4EC00D2EDFA00C6EAFB0070AC
      CF0000000000000000000000000000000000EB9B9D00FFC1C300E17D7800F1CC
      CA00FFFFFF00FFFFFF00FFFEFE00FEFCF900FCF6EF00EFEFED00F0E6E000EFE0
      D700CB8C7800B64D3C00C76868009D4D4D00E59B9C00E9999600E6B4B100FFFF
      FF00FFFEFC00F6FAF800F3EEE800EEDFD500E7D9D000B9705600B14E41009A4C
      53000000000000000000000000000000000000000000C0B8D300C0B8D300553D
      CC004123CA00A397D900A397D900000000000000000000000000000000008972
      E400593FCC006151A8006151A800A7A4A2000000000000000000000000000000
      00000000000000000000000000000000000000000000A7D9F100B0E4EF00CAE8
      F500ABC6D400000000000000000000000000EFA39D00FFC1C200E3838100F2CF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FFFCF900FAF4F000F1EFEB00F2EC
      E600CE958200BE564300D36F76009B4C4C00EAA2A600ED9D9D00E9B7B500FFFF
      FF00FEFDFC00FDF9F500F3F0ED00EFE5DF00ECDCD200BF786200BC574B00A753
      520000000000000000000000000000000000CDC3E400573FCE00573FCE003419
      D0009385D4000000000000000000000000000000000000000000000000000000
      0000AA9EDE008C79E7008C79E7006151A8000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEDBF000CCD3
      D600A7ABAD00858A8B000000000000000000EEAAA600FFC1C200EA8A8E00F5D1
      D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF800F9F5F000F3F5
      F200D49D8E00AC483A009F525600A8534E00F2A9A600F0A1A000EDBBB900FFFF
      FF00FEFEFE00FEFDFD00FCF8F400F3EFEB00F1E9E300C9836F00C5605900A854
      550000000000000000000000000000000000CDC3E400573FCE00573FCE003419
      D0009385D4000000000000000000000000000000000000000000000000000000
      0000AA9EDE008C79E7008C79E7006151A8000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABE
      C000797B7A008488AD007878BC0000000000EEAFAF00FEC2C200F68F9400FBD5
      D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDF800FBFD
      FB00DBA49C00A24039007D3E4100B3585500F2B1AE00F6A6A800F4C0C300FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FCF9F600F6F7F300CA887A00A0494500A552
      5000000000000000000000000000000000008167E4002F16E0002F16E0008777
      D300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000FAE3D1000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C3000000FF003031C5009A9ADC00EFB0AF00FABFBD00FC9A9A00FBCE
      CE00FBF0F100FBEBEC00FAE9EA00F8E9EA00F8E7E700F8E7E700F8E6E900FAE6
      E200DE9F9900BD595800B95E6400B65B6300F2B3B300FAAAAB00FAC2C300FDF7
      F700FCF4F400FBF3F400FBF3F300FBF2F100FAF1EE00D18C8600A54D4D00AE56
      590000000000000000000000000000000000A998E900836BE400836BE4000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009A9ADC009A9ADC00B8B8DC00F0B8B000EFB8AF00EFB3B100EFAD
      AD00EFA7AB00EF9FA500EB989900DD909900DE888700DE898900DE828900DE7A
      7D00D7787D00D0787B00D2776F00D2707000F0B7B000F1B3AE00F2B3B200F2B7
      BB00F0AFB100E6A7AD00E4A09F00E49DA000E4979900D57D8000CB706F00CB6C
      6C00000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800FDA27800C2694200C2694200C2694200C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000CE7B39009A59200083481F00945A32009B602C00CE7B39000000
      0000000000000000000000000000000000000000000000000000000000000000
      00003614D4003614D4003614D4003614D4003614D4003614D4003614D4003614
      D40000000000000000000000000000000000000000005F472F005F472F005F47
      2F005F472F005F472F005F472F005F472F005F472F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800FDA27800C2694200C2694200C2694200C2694200C269
      420000000000000000000000000000000000000000000000000000000000CE7B
      3900CE7B3900E3D5C500F1F3F400FBFFFF00FDFFFF00EEF2F200E3D5C500CE7B
      3900CE7B39000000000000000000000000000000000000000000000000003614
      D4003614D4007C64E0007C64E0007C64E0007C64E0007C64E0007C64E0003614
      D4003614D400000000000000000000000000000000005F472F005F472F005F47
      2F005F472F005F472F005F472F005F472F005F472F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800F8B69800F8B69800F8B69800F8B69800C2694200C269
      4200000000000000000000000000000000000000000000000000CE7B3900E9C9
      AD00EAD1BD00DEB39700D4916800CB744600C9704000D6956D00E1B9A200FDF9
      F300C8B29B00CE7B390000000000000000000000000000000000000000003614
      D4003614D4007C64E0007C64E0007C64E0007C64E0007C64E0007C64E0003614
      D4003614D400000000000000000000000000B0A09000FFFFFF00F0F0F000F0F0
      F000F0F0F000F0F0F000F0F0F000D0C8C0005F472F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800F8B69800F8B69800FF9F7200A8522E00A852
      2E000000000000000000000000000000000000000000CE7B3900EDCBAF00F0D0
      BD00DA9D7A00C5673000C6652D00FFDDD100FFFFFF00BC5D2900BD633400D3A1
      8300FDF9F300C9B49B00CE7B390000000000000000003614D4003614D4003614
      D400463791000000000000000000000000000000000000000000000000007C64
      E0003614D4003614D4003614D40000000000B0A09000FFFFFF00F0B8A000E0B0
      9000E0B09000D0A89000D0A09000D0C8C0005F472F005F472F005F472F005F47
      2F005F472F005F472F005F472F005F472F000000000000000000000000000000
      0000C2694200C2694200F8B69800F8B69800F8B69800FF9F7200A8522E00A852
      2E000000000000000000000000000000000000000000CE7B3900F3DBC700E8A2
      8400D1632B00C54B0600CC5B2000B9511700B9511700B9511700AE410600B75B
      2A00D6A88800FDF9F300CE7B3900000000003614D4003614D4003614D4003614
      D4007C64E0004637910046379100000000000000000000000000000000000000
      00007C64E0003614D4003614D4003614D400D0B8B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0F000F0F0F000D0C8C0005F472F00E0C8C000E0C0B000E0B8
      B000D0B0A000D0A89000D0A890005F472F000000000000000000000000000000
      0000C2694200C2694200F8B69800FF9F7200FF9F7200FF9F7200A8522E00A852
      2E0000000000000000000000000000000000CE7B3900F4E2D000F1C5AB00E877
      4500DD531300D5531200D95D2300FFDDD100FFFFFF00C8541400B9480C00AF44
      0700C0704300DDB8A600FDF9F300CE7B39007C64E0003614D4003614D4000000
      00003614D4007C64E0007C64E000463791000000000000000000000000000000
      0000000000007C64E0007C64E0003614D400D0B8B000FFFFFF00F0B8A000E0B0
      9000E0B09000D0A89000D0A09000D0C8C0005F472F00F0E8E000F0E0E000F0D8
      D000F0D0C000E0D0C000D0A890005F472F00A8522E00ED875400ED875400ED87
      5400C2694200C2694200FF9F7200FF9F7200FF9F7200ED875400A8522E00A852
      2E00A8522E00A8522E00A8522E00A8522E00CE7B3900FDF9F300F5A88500F36E
      3600EA5C1F00E3571D00E6663300FFDDD100FFFFFF00DA713F00C5521500B44C
      0B00B35A2200D0A18600FDF9F300935736007C64E0003614D4003614D4000000
      00003614D4007C64E0007C64E000463791000000000000000000000000000000
      0000000000007C64E0007C64E0003614D400D0B8B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00F0F0F000F0F0F000D0C8C0005F472F00C0B0B000F0F0E000F0E0
      E000F0D8D000F0D0C000D0B0A0005F472F00A8522E00ED875400ED875400ED87
      5400C2694200C2694200FF9F7200FF9F7200FF9F7200ED875400A8522E00A852
      2E00A8522E00A8522E00A8522E00A8522E00CE7B3900FBFFFF00FF946800FF6A
      3000F8672700F0641E00F0642600F18D5500FFFFFF00F6D3C900CC754A00B552
      1400AD4C0E00CD957000FDF9F300874E25007C64E0003614D4003614D4000000
      0000000000003614D4003614D4007C64E0004637910000000000000000000000
      0000000000007C64E0007C64E0003614D400E0C0B000FFFFFF00F0B8A000E0B0
      9000E0B09000B0A090005F472F005F472F005F472F00D0C0C000D0C8C000F0E8
      E000F0E0E000F0D8D000E0B8B0005F472F0000000000A8522E00A8522E00FDA2
      7800FF9F7200FF9F7200FF9F7200ED875400ED875400ED875400C2694200C269
      4200C2694200A8522E00A8522E0000000000CE844900FBFFFF00FF9A7400FF71
      3500FF692C00FF632C00FF622500FE661D00EC865200FFFFFF00F7EEDC00CC75
      4A00BB460F00D7946F00FDF9F300864B24007C64E0003614D4003614D4000000
      00000000000000000000000000003614D4007C64E00046379100463791000000
      0000000000007C64E0007C64E0003614D400E0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0A89000D0C8C0005F472F00E0E0E000FFFFFF00FFFFFF00FFFF
      FF001F47D0001F3FA000E0C0B0005F472F0000000000A8522E00A8522E00FDA2
      7800FF9F7200FF9F7200FF9F7200ED875400ED875400ED875400C2694200C269
      4200C2694200A8522E00A8522E0000000000D68D5F00FDF8F200FFB89600FF7E
      4E00FF764000F6D3C900F6D3C900FD641F00ED631800EE8A6600FFFFFF00DA76
      4700DA764700DFAB9200FDF9F3009C7444007C64E0003614D4003614D4000000
      0000000000000000000000000000000000003614D4007C64E0007C64E0004637
      9100000000007C64E0007C64E0003614D400E0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0B0A0005F472F00E0E0E000FFFFFF00FFFFFF00FFFFFF00FFFF
      FF003F5FF0001F47D000E0C8C0005F472F00000000000000000000000000A852
      2E00FDA27800FDA27800ED875400ED875400ED875400C2694200C2694200C269
      4200A8522E00000000000000000000000000DDAB8000FDF9F300FCCFBD00FF8E
      6100FF7E4B00FFDDD100FFFFFF00EC936600FB793E00EC936600FFFFFF00EC93
      6600EC936600E7C5AE00FDF9F300BF9C70007C64E0003614D4003614D4000000
      0000000000000000000000000000000000003614D4007C64E0007C64E0004637
      9100000000007C64E0007C64E0003614D400E0C0B000E0C0B000E0C0B000E0C0
      B000D0B8B000D0B0A000F0E0E000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF005F472F000000000000000000000000000000
      0000A8522E00A8522E00ED875400C2694200C2694200C2694200A8522E00A852
      2E000000000000000000000000000000000000000000E4B28900FDF9F300FFC0
      A200FF8D5C00FF9B7300FFDDD100FFFFFF00FFFFFF00FFFFFF00FF9B7300FF9B
      7300F5C2A900FDF9F300CEA57A00000000007C64E0003614D4003614D4003614
      D40000000000000000000000000000000000000000003614D4003614D4007C64
      E000463791003614D4003614D4003614D400000000000000000000000000C0B0
      A000F0D8D000F0D8D000F0D8D000F0D8D000E0D8D000E0D0C000E0C8C000E0C0
      B000E0B8A000D0B0A000D0A89000B09890000000000000000000000000000000
      0000A8522E00A8522E00ED875400C2694200C2694200C2694200A8522E00A852
      2E000000000000000000000000000000000000000000E2AF8200EBD0BA00FDF9
      F300FFC1A600FFA27E00FFB08E00FFB08E00FFB08E00FFB08E00F8B49700F8CA
      B400FDF9F300DDBB9900D4AA820000000000000000007C64E0007C64E0003614
      D4003614D4000000000000000000000000000000000000000000000000003614
      D4003614D4003614D4003614D400000000000000000000000000000000000000
      0000D0B8B000F0F0F000FFFFFF00FFFFFF00FFFFFF00F0E8E000F0E8E000F0E0
      D000F0D8D000F0D8D000B0989000000000000000000000000000000000000000
      00000000000000000000A8522E00A8522E00A8522E00A8522E00000000000000
      0000000000000000000000000000000000000000000000000000E2BC9D00ECCF
      B500FDF9F300FBD0BB00FFAD8700FFAD8700FFAD8700FFAD8700F2D1BD00FDF9
      F300DEBF9E00D8B5920000000000000000000000000000000000000000007C64
      E0003614D4003614D4003614D4003614D4003614D4003614D4003614D4003614
      D4003614D4000000000000000000000000000000000000000000000000000000
      000000000000D0B8B000F0F0F000FFFFFF00FFFFFF00FFFFFF00F0F0F000F0E8
      E000F0D8D000B0A0900000000000000000000000000000000000000000000000
      0000000000000000000000000000A8522E00A8522E0000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E4B3
      8800E6BC9700FDF9F300FDF9F300FDF9F300FDF9F300FDF9F300FDF9F300D6B0
      8C00D7B38F000000000000000000000000000000000000000000000000007C64
      E0003614D4003614D4003614D4003614D4003614D4003614D4003614D4003614
      D4003614D4000000000000000000000000000000000000000000000000000000
      00000000000000000000D0B8B000F0F0F000FFFFFF00FFFFFF00FFFFFF00F0F0
      F000B0A090000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8522E00A8522E0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000E1B28800CE945700CE945700CE945700CE945700D7AE88000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007C64E0007C64E0007C64E0007C64E0007C64E0007C64E0007C64E0003614
      D400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000C0B0A000C0B0A000C0B0A000C0B0A000C0B0
      A00000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FE7FC00300000000FE7FC00300000000
      FC3F800100000000F00F800000000000F00F000000000000E007000000000000
      8001000000000000800100000000000000000000000000000000000000000000
      F00F800000000000F00FC00000000000F00FE00100000000F00FF00100000000
      F00FF80100000000F00FFC01000000008FFF1FFF8000FC0007F81FFF0000FC00
      01F00FFF0000FC0001F087FF0000FC0080E1C3FF00000000E007E1FF00000000
      F00FF0FF00000000F80FF87F00000003F80FFC3F00000007F007FE1F0000000F
      E081FF0F0000000F81E0FF870000000F07F0FFC30000000F07F0FFE10000000F
      0FFEFFF00000000F1FFFFFF80000000FF00FF81FF00F807FF00FE007E007807F
      F00FC003E007007FF00F800187E10000F00F800101F00000F00F000010F80000
      0000000010F800000000000018780000800100001E180000800100001F080000
      E00700001F080000F00F80010F80E000F00F800187E1F001FC3FC003E007F803
      FE7FE007E007FC07FE7FF81FF00FFE0F00000000000000000000000000000000
      000000000000}
  end
  object AdvStickyPopupMenu1: TAdvStickyPopupMenu
    ButtonBar = <>
    MenuItems = <>
    Version = '1.6.0.0'
    Left = 424
    Top = 48
  end
  object AdvPopupMenu1: TAdvPopupMenu
    Version = '2.5.5.1'
    Left = 168
    Top = 8
    object Nuevaalternativa1: TMenuItem
      Action = NuevaAlternativa
    end
    object Nuevocomplemento1: TMenuItem
      Action = NuevoComplemento
    end
  end
  object AdvMainMenu1: TAdvMainMenu
    Version = '2.5.5.1'
    Left = 344
    Top = 64
    object Archivo1: TMenuItem
      Caption = 'Archivo'
    end
  end
end

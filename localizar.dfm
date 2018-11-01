object frmLocalizar: TfrmLocalizar
  Left = 491
  Top = 175
  Width = 472
  Height = 396
  Caption = 'Localizar'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pgControlLocalizar: TAdvPageControl
    Left = 8
    Top = 8
    Width = 441
    Height = 313
    ActivePage = Folio
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    ActiveColor = clBtnHighlight
    TabBackGroundColor = clBtnFace
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '2.0.0.4'
    PersistPagesState.Location = plRegistry
    PersistPagesState.Enabled = False
    TabOrder = 0
    OnChange = pgControlLocalizarChange
    OnResize = pgControlLocalizarResize
    object Folio: TAdvTabSheet
      Caption = 'Folio'
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object edtFolio: TAdvEdit
        Left = 48
        Top = 8
        Width = 65
        Height = 19
        EmptyTextStyle = []
        FocusBorder = True
        FocusBorderColor = clMenuHighlight
        LabelCaption = '&Folio:'
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
        Color = clWindow
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 0
        Visible = True
        OnChange = edtFolioChange
        Version = '3.3.2.8'
      end
    end
    object Cliente: TAdvTabSheet
      Caption = 'Cliente'
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object lblContador: TLabel
        Left = 16
        Top = 270
        Width = 68
        Height = 13
        Caption = '0 cotizaciones'
      end
      object edtClaveCliente: TAdvEditBtn
        Left = 64
        Top = 7
        Width = 121
        Height = 21
        EmptyTextStyle = []
        Flat = False
        SoftBorder = True
        LabelCaption = '&Clave:     '
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
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clBtnHighlight
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = False
        TabOrder = 0
        Transparent = True
        Visible = True
        OnExit = edtClaveClienteExit
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
        OnClickBtn = edtClaveClienteClickBtn
      end
      object edtNombreCliente: TAdvEditBtn
        Left = 64
        Top = 36
        Width = 365
        Height = 21
        EmptyTextStyle = []
        Flat = False
        SoftBorder = True
        LabelCaption = '&Nombre: '
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
        BevelInner = bvNone
        BevelOuter = bvNone
        Color = clBtnHighlight
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentColor = True
        ParentCtl3D = False
        ParentFont = False
        ReadOnly = False
        TabOrder = 1
        Transparent = True
        Visible = True
        OnChange = edtNombreClienteChange
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
        OnClickBtn = edtNombreClienteClickBtn
      end
      object cbxEstatus: TAdvComboBox
        Left = 64
        Top = 65
        Width = 121
        Height = 22
        Color = clWindow
        Version = '1.5.1.1'
        Visible = True
        BevelKind = bkSoft
        BevelInner = bvNone
        EmptyTextStyle = []
        Ctl3D = False
        DropWidth = 0
        Enabled = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ItemIndex = -1
        ItemHeight = 14
        Items.Strings = (
          'Pendientes'
          'Cerradas'
          'Canceladas'
          'Todas')
        LabelCaption = 'E&status:  '
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Arial Unicode MS'
        LabelFont.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 2
        Text = 'Todas'
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
      end
      object AdvDateTimePicker2: TAdvDateTimePicker
        Left = 64
        Top = 97
        Width = 121
        Height = 22
        BevelEdges = []
        BevelInner = bvNone
        Date = 43327.000000000000000000
        Time = 43327.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        Kind = dkDate
        ParentFont = False
        TabOrder = 3
        TabStop = True
        BorderStyle = bsSingle
        Ctl3D = False
        DateTime = 43327.000000000000000000
        TimeFormat = ' '
        Version = '1.2.2.0'
        LabelCaption = '&Periodo:  '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Arial Unicode MS'
        LabelFont.Style = []
      end
      object AdvDateTimePicker3: TAdvDateTimePicker
        Left = 210
        Top = 97
        Width = 121
        Height = 22
        BevelEdges = []
        BevelInner = bvNone
        Date = 43327.000000000000000000
        Time = 43327.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        Kind = dkDate
        ParentFont = False
        TabOrder = 4
        TabStop = True
        BorderStyle = bsSingle
        Ctl3D = False
        DateTime = 43327.000000000000000000
        TimeFormat = ' '
        Version = '1.2.2.0'
        LabelCaption = 'al: '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Arial Unicode MS'
        LabelFont.Style = []
      end
      object Panel1: TPanel
        Left = 8
        Top = 128
        Width = 417
        Height = 2
        TabOrder = 5
      end
      object grdFolios: TAdvStringGrid
        Left = 8
        Top = 140
        Width = 417
        Height = 125
        Cursor = crDefault
        ColCount = 6
        DefaultRowHeight = 18
        FixedColor = clBtnShadow
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
        ParentFont = False
        ScrollBars = ssBoth
        TabOrder = 6
        HoverRowCells = [hcNormal, hcSelected]
        ActiveCellFont.Charset = DEFAULT_CHARSET
        ActiveCellFont.Color = clWindowText
        ActiveCellFont.Height = -11
        ActiveCellFont.Name = 'Tahoma'
        ActiveCellFont.Style = [fsBold]
        ColumnHeaders.Strings = (
          'Fecha'
          'Folio'
          'Estatus'
          'Vigencia'
          'Descripci'#243'n'
          'Docto_ve_id')
        ControlLook.FixedGradientHoverFrom = 16775139
        ControlLook.FixedGradientHoverTo = 16775139
        ControlLook.FixedGradientHoverMirrorFrom = 16772541
        ControlLook.FixedGradientHoverMirrorTo = 16508855
        ControlLook.FixedGradientHoverBorder = 12033927
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
        EnableHTML = False
        EnableWheel = False
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
        FixedColWidth = 67
        FixedRowHeight = 18
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Arial Unicode MS'
        FixedFont.Style = []
        FloatFormat = '%.2f'
        HoverButtons.Buttons = <>
        HoverButtons.Position = hbLeftFromColumnLeft
        Look = glListView
        Navigation.AllowCtrlEnter = False
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
        SelectionColor = clHighlight
        SelectionTextColor = clHighlightText
        ShowDesignHelper = False
        SortSettings.DefaultFormat = ssAutomatic
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '7.4.6.3'
        ColWidths = (
          67
          63
          62
          68
          144
          64)
      end
      object btnMostrar: TAdvGlowButton
        Left = 345
        Top = 99
        Width = 80
        Height = 20
        Caption = 'Mostrar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        NotesFont.Charset = DEFAULT_CHARSET
        NotesFont.Color = clWindowText
        NotesFont.Height = -11
        NotesFont.Name = 'Tahoma'
        NotesFont.Style = []
        ParentFont = False
        TabOrder = 7
        OnClick = btnMostrarClick
        Appearance.BorderColor = clGray
        Appearance.Color = clMenu
        Appearance.ColorTo = clMenu
        Appearance.ColorChecked = 16111818
        Appearance.ColorCheckedTo = 16111818
        Appearance.ColorDisabled = cl3DLight
        Appearance.ColorDisabledTo = cl3DLight
        Appearance.ColorDown = 16111818
        Appearance.ColorDownTo = 16367008
        Appearance.ColorHot = clGradientInactiveCaption
        Appearance.ColorHotTo = clGradientInactiveCaption
        Appearance.ColorMirror = clMenu
        Appearance.ColorMirrorTo = clMenu
        Appearance.ColorMirrorHot = clGradientInactiveCaption
        Appearance.ColorMirrorHotTo = clGradientInactiveCaption
        Appearance.ColorMirrorDown = 16102556
        Appearance.ColorMirrorDownTo = 16768988
        Appearance.ColorMirrorChecked = 16111818
        Appearance.ColorMirrorCheckedTo = 16111818
        Appearance.ColorMirrorDisabled = cl3DLight
        Appearance.ColorMirrorDisabledTo = cl3DLight
        Appearance.SystemFont = False
        Enabled = False
      end
    end
  end
  object btnAceptar: TAdvGlowButton
    Left = 280
    Top = 330
    Width = 80
    Height = 20
    Caption = '&Aceptar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    TabOrder = 1
    OnClick = btnAceptarClick
    Appearance.BorderColor = clGray
    Appearance.Color = clMenu
    Appearance.ColorTo = clMenu
    Appearance.ColorChecked = 16111818
    Appearance.ColorCheckedTo = 16111818
    Appearance.ColorDisabled = cl3DLight
    Appearance.ColorDisabledTo = cl3DLight
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = clGradientInactiveCaption
    Appearance.ColorHotTo = clGradientInactiveCaption
    Appearance.ColorMirror = clMenu
    Appearance.ColorMirrorTo = clMenu
    Appearance.ColorMirrorHot = clGradientInactiveCaption
    Appearance.ColorMirrorHotTo = clGradientInactiveCaption
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16111818
    Appearance.ColorMirrorCheckedTo = 16111818
    Appearance.ColorMirrorDisabled = cl3DLight
    Appearance.ColorMirrorDisabledTo = cl3DLight
    Appearance.SystemFont = False
  end
  object btnCancelar: TAdvGlowButton
    Left = 368
    Top = 330
    Width = 80
    Height = 20
    Caption = '&Cancelar'
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    TabOrder = 2
    OnClick = btnCancelarClick
    Appearance.BorderColor = clGray
    Appearance.Color = clMenu
    Appearance.ColorTo = clMenu
    Appearance.ColorChecked = 16107693
    Appearance.ColorCheckedTo = 16107693
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 16111818
    Appearance.ColorDownTo = 16367008
    Appearance.ColorHot = clGradientInactiveCaption
    Appearance.ColorHotTo = clGradientInactiveCaption
    Appearance.ColorMirror = clMenu
    Appearance.ColorMirrorTo = clMenu
    Appearance.ColorMirrorHot = clGradientInactiveCaption
    Appearance.ColorMirrorHotTo = clGradientInactiveCaption
    Appearance.ColorMirrorDown = 16102556
    Appearance.ColorMirrorDownTo = 16768988
    Appearance.ColorMirrorChecked = 16107693
    Appearance.ColorMirrorCheckedTo = 16107693
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
  end
end

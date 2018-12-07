object frmjagt: Tfrmjagt
  Left = 479
  Top = 152
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Articulos complementarios'
  ClientHeight = 333
  ClientWidth = 485
  Color = clBtnHighlight
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Arial Unicode MS'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object AdvDPAcciones: TAdvDockPanel
    Left = 0
    Top = 0
    Width = 485
    Height = 72
    MinimumSize = 3
    LockHeight = False
    Persistence.Location = plRegistry
    Persistence.Enabled = False
    ToolBarStyler = AdvToolBarOfficeStyler1
    UseRunTimeHeight = False
    Version = '5.2.2.0'
    object ATBMenues: TAdvToolBar
      Left = 3
      Top = 1
      Width = 479
      Height = 26
      AllowFloating = True
      AutoOptionMenu = True
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
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '5.2.2.0'
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
        DropDownMenu = popupEdicion
        Caption = '&Edici'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '5.2.2.0'
      end
      object AdvToolBarMenuButton3: TAdvToolBarMenuButton
        Left = 105
        Top = 2
        Width = 24
        Height = 23
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        DropDownMenu = popupVer
        Caption = '&Ver'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Position = daTop
        ShowCaption = True
        Version = '5.2.2.0'
      end
    end
    object ATBBotones: TAdvToolBar
      Left = 3
      Top = 28
      Width = 312
      Height = 30
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
        Left = 9
        Top = 2
        Width = 110
        Height = 26
        Action = GuardarCerrar
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 6
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '5.2.2.0'
      end
      object ATBBGuardarNuevo: TAdvToolBarButton
        Left = 119
        Top = 2
        Width = 113
        Height = 26
        Action = GuardarNuevo
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 7
        ParentFont = False
        Position = daTop
        ShowCaption = True
        Version = '5.2.2.0'
      end
      object ATBS1: TAdvToolBarSeparator
        Left = 232
        Top = 2
        Width = 9
        Height = 23
        LineColor = clBtnShadow
      end
      object ATBBModificar: TAdvToolBarButton
        Left = 241
        Top = 2
        Width = 24
        Height = 26
        Action = Modificar
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Glyph.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D0020000000000000000000000000000000000000000007F7F7F
          C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7F7F7FB0E4EF9DCAF594B5D5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0E4EF
          B0E4EF69A3D15992B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73ACCC5497C2599CC6649FC4FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF72ACCD65A5CC6BAAD170ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91BDD97CB6D980BADC70
          ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF70ABCC95C8E595CAE670ACCFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AC7E0AC
          D6EDA8D7EF70ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECEE9C1E3F5B9E1F670ACCFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA4D4ECD2EDFAC6EAFB70ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7D9F1B0E4EFCAE8F5ABC6
          D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFAEDBF0CCD3D6A7ABAD858A8BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABEC0797B
          7A8488AD7878BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C30000FF3031C59A9ADCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF9A9ADC9A9ADCB8B8DC}
        GlyphHot.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          18000000000010020000C30E0000C30E00000000000000000000241CED241CED
          CEC3BE806F5F90775F906F5F0000000000000000000000000000000000000000
          000000000000241CEDB0906FB0906FD0B0A0D0B0A0B0906FB098805F472FBCAC
          A5241CED241CED241CED241CED241CED0000B0906FE0C0B0D0C0B0E0D0C0F0E0
          E0FFFFFFB0906FA090805F472FB9A8A1241CED241CED241CED241CED0000B090
          6FFFFFFFFFFFFFF0F0F0DECFC0F0E0E0FFFFFFB0906FA090805F472FB6A49D24
          1CED241CED241CED0000B0906FFFFFFFFFFFFFFFFFFFF0F0F0DECFC0F0E0E0FF
          FFFFB0906FA090805F472FB3A099241CED241CED0000241CEDB0906FFFFFFFFF
          FFFFFFFFFFF0F0F0DECFC0F0E0E0FFFFFFB0906FA090805F472FAF9B94241CED
          0000241CED241CEDB0906FFFFFFFFFFFFFFFFFFFF0F0F0DECFC0F0E0E0FFFFFF
          B0906FA090805F472F241CED0000241CED241CED241CEDB0906FFFFFFFFFFFFF
          FFFFFFF0F0F0DECFC0F0E0E0FFFFFFB0906F805F4F241CED0000241CED241CED
          241CED241CEDB0906FFFFFFFFFFFFFFFFFFFF0F0F0DECFC0F0E0E0FFFFFFB090
          6F241CED0000241CED241CED241CED241CED241CEDB0906FFFFFFFFFFFFFFFFF
          FFF0F0F0DECFC0F0E0E0B0906F241CED0000241CED241CED241CED241CED241C
          ED241CEDB0906FFFFFFFFFFFFFFFFFFFF0F0F0B0906F241CED241CED0000241C
          ED241CED241CED241CED241CED241CED241CEDB0906FB0906FB0906FB0906F24
          1CED241CED241CED0000}
        GlyphDown.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000241CED241CED
          241CED241CED241CEDE7E7E8DDDCDCD8D6D5D8D6D5DDDCDCE7E7E8241CED241C
          ED241CED241CED241CED241CED241CED241CEDD9D6D3A59683A18660A6844FA9
          8449A88449A583509F8560A49583D8D6D3241CED241CED241CED241CED241CED
          F8F7F6A38B6E8C611EA57A28B08930B48E33B48F33B08930A479288B5F1EA389
          6E241CED241CED241CED241CED241CEDB8A18681561CA37B2AB79538C2A441C7
          AA46C7AA46C2A341B89438898323636716B79F86241CED241CED241CED241CED
          9F78448C5C17B79234CCB246D8C353DDCB5ADDCB59D8C253CBAD455DB91D2CA9
          049C7644241CED241CED241CED241CEDB7935B9D6E1DC29D36DDCB50E9DE60EF
          E668F0E669D9D95A57CB201ADF080DDD013ABC1E241CED241CED241CED241CED
          E7D4ADC8A543CAA136EEE161F7F47DFBF98AFBF98AEFF17AA5DA4841D4132CDC
          129AD980241CED241CED241CED241CEDFDFAF5ECD594D5A941F5E26DFCFA9FFE
          FEB6FEFEB7FCFA9FFBE16F83B72472D95EFFF7F6241CED241CED241CED241CED
          241CEDFDF9F1E9C991DAA947E5CD67E4D981E4D981E5CC67DAA847E1C68DF2F6
          EB241CED241CED241CED241CED241CED241CED241CED241CEDE3CFB8B28845A3
          7D28A37D28B28844E3CFB8241CED241CED241CED241CED241CED241CED241CED
          241CED241CED241CEDD2BD9FB18934BE9A34BE9A34B18934D2BD9F241CED241C
          ED241CED241CED241CED241CED241CED241CED241CEDF3EDE6AF8744B69031C1
          A23DC1A23DB69131AF8744F3EDE6241CED241CED241CED241CED241CED241CED
          241CED241CEDEDE2D6B98E3ACDB140DAC852DAC852CDB140B98F3AEDE2D6241C
          ED241CED241CED241CED241CED241CED241CED241CEDF7F1EBD2A958E8D46CF5
          F09FF6F1A0E8D56FD2AA59F7F1EB241CED241CED241CED241CED241CED241CED
          241CED241CEDFFFFFFF1DDBDF6E4A4FFFCD6FFFDD8F7E5A7F1DDBDFFFFFF241C
          ED241CED241CED241CED241CED241CED241CED241CED241CEDFFFEFEFBF3E3FA
          F1D6FAF1D7FBF3E3FFFEFE241CED241CED241CED241CED241CED}
        GlyphDisabled.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D0020000000000000000000000000000000000000000007F7F7F
          C3C3C3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFF7F7F7FB0E4EF9DCAF594B5D5FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB0E4EF
          B0E4EF69A3D15992B6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF73ACCC5497C2599CC6649FC4FFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFF72ACCD65A5CC6BAAD170ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF91BDD97CB6D980BADC70
          ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFF70ABCC95C8E595CAE670ACCFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9AC7E0AC
          D6EDA8D7EF70ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9ECEE9C1E3F5B9E1F670ACCFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFA4D4ECD2EDFAC6EAFB70ACCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA7D9F1B0E4EFCAE8F5ABC6
          D4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFAEDBF0CCD3D6A7ABAD858A8BFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBABEC0797B
          7A8488AD7878BCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFC3C3C30000FF3031C59A9ADCFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF9A9ADC9A9ADCB8B8DC}
        GlyphChecked.Data = {
          9E010000424D9E0100000000000036000000280000000B0000000A0000000100
          1800000000006801000000000000000000000000000000000000FFFFFFFFFFFF
          FFFFFFFDA278FDA278C26942C26942C26942FFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFDA278F8B698F8B698F8B698C26942FFFFFFFFFFFFFFFFFF00
          0000FFFFFFFFFFFFFFFFFFC26942F8B698F8B698FF9F72A8522EFFFFFFFFFFFF
          FFFFFF000000FFFFFFFFFFFFFFFFFFC26942F8B698FF9F72FF9F72A8522EFFFF
          FFFFFFFFFFFFFF000000A8522EED8754ED8754C26942FF9F72FF9F72ED8754A8
          522EA8522EA8522EA8522E000000FFFFFFA8522EFDA278FF9F72FF9F72ED8754
          ED8754C26942C26942A8522EFFFFFF000000FFFFFFFFFFFFA8522EFDA278ED87
          54ED8754C26942C26942A8522EFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFA8
          522EED8754C26942C26942A8522EFFFFFFFFFFFFFFFFFF000000FFFFFFFFFFFF
          FFFFFFFFFFFFA8522EA8522EA8522EFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFA8522EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00
          0000}
        ImageIndex = 5
        ParentFont = False
        Position = daTop
        Version = '5.2.2.0'
      end
      object ATBBEliminar: TAdvToolBarButton
        Left = 265
        Top = 2
        Width = 24
        Height = 26
        Action = Eliminar
        Appearance.CaptionFont.Charset = DEFAULT_CHARSET
        Appearance.CaptionFont.Color = clWindowText
        Appearance.CaptionFont.Height = -11
        Appearance.CaptionFont.Name = 'Segoe UI'
        Appearance.CaptionFont.Style = []
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ImageIndex = 4
        ParentFont = False
        Position = daTop
        Version = '5.2.2.0'
      end
      object ATBS2: TAdvToolBarSeparator
        Left = 289
        Top = 2
        Width = 9
        Height = 23
        LineColor = clBtnShadow
      end
    end
  end
  object PGCArticulos: TAdvPageControl
    Left = 8
    Top = 59
    Width = 472
    Height = 270
    ActivePage = tabGeneral
    ActiveFont.Charset = DEFAULT_CHARSET
    ActiveFont.Color = clWindowText
    ActiveFont.Height = -11
    ActiveFont.Name = 'Tahoma'
    ActiveFont.Style = []
    PopupMenu = axv_PopMenuAlternativas
    ActiveColor = clBtnHighlight
    TabBackGroundColor = clBtnHighlight
    TabMargin.RightMargin = 0
    TabOverlap = 0
    Version = '1.7.1.0'
    TabOrder = 0
    OnChange = PGCArticulosChange
    object tabGeneral: TAdvTabSheet
      Caption = '   General '
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object cbxLineas: TAdvComboBox
        Left = 104
        Top = 136
        Width = 201
        Height = 23
        Color = clBtnHighlight
        Version = '1.3.2.2'
        Visible = True
        Flat = True
        Ctl3D = False
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 15
        LabelCaption = 'Linea del articulo:  '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentCtl3D = False
        TabOrder = 2
        OnKeyPress = edtClaveKeyPress
      end
      object cbxUnidadMedida: TAdvComboBox
        Left = 104
        Top = 186
        Width = 65
        Height = 23
        Color = clBtnHighlight
        Version = '1.3.2.2'
        Visible = True
        Flat = True
        Ctl3D = False
        DropWidth = 0
        Enabled = True
        ItemIndex = -1
        ItemHeight = 15
        LabelCaption = 'Unidad de medida:'
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'MS Sans Serif'
        LabelFont.Style = []
        ParentCtl3D = False
        TabOrder = 3
      end
      object edtNombre: TAdvEditBtn
        Left = 104
        Top = 19
        Width = 345
        Height = 20
        EmptyText = 'Buscar'
        Flat = True
        FocusColor = clBtnHighlight
        LabelCaption = 'Nombre:                '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Arial Unicode MS'
        LabelFont.Style = []
        Lookup.Separator = ';'
        BorderStyle = bsNone
        Color = clBtnHighlight
        Enabled = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = False
        TabOrder = 1
        Visible = True
        OnExit = edtNombreExit
        OnKeyPress = edtClaveKeyPress
        Version = '1.3.2.8'
        ButtonStyle = bsDropDown
        ButtonWidth = 16
        Etched = False
        Glyph.Data = {
          96000000424D9600000000000000360000002800000007000000040000000100
          1800000000006000000000000000000000000000000000000000E1E1E1E1E1E1
          E1E1E1000000E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E10000000000000000
          00E1E1E1E1E1E1000000E1E1E1000000000000000000000000000000E1E1E100
          0000000000000000000000000000000000000000000000000000}
        OnClickBtn = edtNombreClickBtn
      end
      object edtClave: TAdvEditBtn
        Left = 104
        Top = 86
        Width = 201
        Height = 20
        EmptyText = 'Buscar'
        Flat = True
        FocusColor = clBtnHighlight
        LabelCaption = 'Clave del articulo: '
        LabelPosition = lpLeftCenter
        LabelFont.Charset = DEFAULT_CHARSET
        LabelFont.Color = clWindowText
        LabelFont.Height = -11
        LabelFont.Name = 'Arial Unicode MS'
        LabelFont.Style = []
        Lookup.Separator = ';'
        BorderStyle = bsNone
        Color = clBtnHighlight
        Enabled = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial Unicode MS'
        Font.Style = []
        ParentFont = False
        ReadOnly = False
        TabOrder = 0
        Visible = True
        OnExit = edtClaveExit
        OnKeyPress = edtClaveKeyPress
        Version = '1.3.2.8'
        ButtonStyle = bsDropDown
        ButtonWidth = 16
        Etched = False
        Glyph.Data = {
          96000000424D9600000000000000360000002800000007000000040000000100
          1800000000006000000000000000000000000000000000000000E1E1E1E1E1E1
          E1E1E1000000E1E1E1E1E1E1E1E1E1000000E1E1E1E1E1E10000000000000000
          00E1E1E1E1E1E1000000E1E1E1000000000000000000000000000000E1E1E100
          0000000000000000000000000000000000000000000000000000}
        OnClickBtn = edtClaveClickBtn
      end
      object Panel1: TPanel
        Left = 12
        Top = 61
        Width = 433
        Height = 3
        TabOrder = 4
        object Panel2: TPanel
          Left = 0
          Top = -8
          Width = 433
          Height = 2
          TabOrder = 0
        end
      end
    end
    object tabAlternativas: TAdvTabSheet
      Caption = 'Alternativas'
      Color = clBtnHighlight
      ColorTo = clNone
      TabColor = clBtnFace
      TabColorTo = clNone
      object sstrgAlternativas: TAdvStringGrid
        Left = 3
        Top = 2
        Width = 460
        Height = 235
        Cursor = crDefault
        ColCount = 6
        Enabled = False
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        ParentShowHint = False
        PopupMenu = axv_PopMenuAlternativas
        ScrollBars = ssVertical
        ShowHint = True
        TabOrder = 0
        OnKeyDown = sstrgAlternativasKeyDown
        OnSelectCell = sstrgAlternativasSelectCell
        GridLineColor = 15527152
        GridFixedLineColor = 13947601
        OnCanAddRow = sstrgAlternativasCanAddRow
        OnCellValidate = sstrgAlternativasCellValidate
        OnGetEditorType = sstrgAlternativasGetEditorType
        OnEllipsClick = sstrgAlternativasEllipsClick
        OnEditCellDone = sstrgAlternativasEditCellDone
        HintShowCells = True
        HintShowLargeText = True
        HintShowSizing = True
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
          '.'
          'Comentarios'
          'Articulo_id_dest'
          'Relacion_id')
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
        FixedColWidth = 78
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
        Look = glVista
        Navigation.AdvanceOnEnter = True
        Navigation.AdvanceInsert = True
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
        ScrollBarAlways = saVert
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
        SortSettings.HeaderColor = 16579058
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '5.8.0.2'
        ColWidths = (
          78
          183
          2
          177
          64
          64)
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
        Width = 461
        Height = 238
        Cursor = crDefault
        ColCount = 6
        Enabled = False
        FixedCols = 0
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing]
        ParentFont = False
        PopupMenu = axv_PopMenuComplementos
        ScrollBars = ssVertical
        TabOrder = 0
        OnKeyDown = strgComplementosKeyDown
        GridLineColor = 15527152
        GridFixedLineColor = 13947601
        OnCanAddRow = strgComplementosCanAddRow
        OnCellValidate = strgComplementosCellValidate
        OnGetEditorType = strgComplementosGetEditorType
        OnEllipsClick = strgComplementosEllipsClick
        OnEditCellDone = strgComplementosEditCellDone
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
          'Pzs'
          'Comentarios'
          'Articulo_id_dest'
          'Relacion_id')
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
        FixedColWidth = 78
        FixedRowHeight = 22
        FixedRowAlways = True
        FixedFont.Charset = DEFAULT_CHARSET
        FixedFont.Color = clWindowText
        FixedFont.Height = -11
        FixedFont.Name = 'Tahoma'
        FixedFont.Style = [fsBold]
        FloatFormat = '%.2f'
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
        ScrollBarAlways = saVert
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
        SortSettings.HeaderColor = 16579058
        SortSettings.HeaderColorTo = 16579058
        SortSettings.HeaderMirrorColor = 16380385
        SortSettings.HeaderMirrorColorTo = 16182488
        Version = '5.8.0.2'
        ColWidths = (
          78
          195
          31
          136
          64
          64)
      end
    end
  end
  object AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler
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
    Left = 387
    Top = 1
    object Guardar: TAction
      Caption = 'Guardar'
      ImageIndex = 6
      ShortCut = 16455
      OnExecute = GuardarExecute
    end
    object GuardarCerrar: TAction
      Caption = 'Guardar y cerrar'
      ImageIndex = 6
      ShortCut = 122
      OnExecute = GuardarCerrarExecute
    end
    object GuardarNuevo: TAction
      Caption = 'Guardar y nuevo'
      ImageIndex = 7
      ShortCut = 123
      OnExecute = GuardarNuevoExecute
    end
    object Modificar: TAction
      Caption = 'Modificar'
      ImageIndex = 5
      ShortCut = 16461
      OnExecute = ModificarExecute
    end
    object Eliminar: TAction
      Caption = 'Eliminar'
      ImageIndex = 4
      ShortCut = 16453
      OnExecute = EliminarExecute
    end
    object NuevaAlternativa: TAction
      Caption = 'Nueva alternativa'
      Enabled = False
      OnExecute = NuevaAlternativaExecute
    end
    object NuevoComplemento: TAction
      Caption = 'Nuevo complemento'
      Enabled = False
      OnExecute = NuevoComplementoExecute
    end
    object Nuevo: TAction
      Caption = 'Nuevo'
      ImageIndex = 10
      ShortCut = 16462
      OnExecute = NuevoExecute
    end
    object EliminarAlternativa: TAction
      Caption = 'Eliminar alternativa'
      Enabled = False
      OnExecute = EliminarAlternativaExecute
    end
    object EliminarComplemento: TAction
      Caption = 'Eliminar Complemento'
      Enabled = False
      OnExecute = EliminarComplementoExecute
    end
    object MostrarAlternativas: TAction
      Caption = 'Mostrar alternativas'
      ShortCut = 24641
      OnExecute = MostrarAlternativasExecute
    end
    object MostrarComplementos: TAction
      Caption = 'Mostrar complementos'
      ShortCut = 24643
      OnExecute = MostrarComplementosExecute
    end
  end
  object ImgLstgrdArticulos: TImageList
    ShareImages = True
    Left = 359
    Top = 1
    Bitmap = {
      494C010109000E00040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0884F00D19B7E00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DAB3A900F0884F00D0774F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000D8A99700F0884F00D07C
      5600000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C67A5A00F088
      4F00DAAF9A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000E077
      3F00F0905F00E6C1AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000B05F3F00B05F
      3F00B05F3F00B05F3F00B05F3F00904F2F00000000000000000000000000C067
      3F00F0884F00E6C1AF0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0804F00E06F
      2F00F0804F00F0986F00E0905F0000000000000000000000000000000000C067
      3F00E0855700EEB99E0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0905F00F080
      4F00F0905F00F0A06F00B05F3F0000000000000000000000000000000000C067
      3F00E07D4800EFB6980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000E0986F00F098
      6F00F0A06F00EF956600B05F3F00B05F3F00000000000000000000000000A45F
      3900E07D4800EFB7980000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A88000F0C7
      AC00F0C6B200F0B09000E0905F00C06F3F00C0673F00BF815B00B77D5300A05F
      3F00F0884F00F0C4A80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000F0A890000000
      000000000000F0C4B000F0B09000F0956600D06F3F00B0673F00B3673900E17D
      4800F0BAA400F0C4B60000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000F0BEA500F0B09000F0B79A00F0B08C00F0B08C00F0BE
      A800F0C2B3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F0BEA600F0BEA900F0BEA900F1D2
      C900000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000097623F003828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C06F3F00B0572F00B0572F00803F1F00803F1F00803F
      1F00803F1F00803F1F00803F1F0000000000000000000000000000000000CEC3
      BE00806F5F0090775F00906F5F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000080674F001F2F3F001F2F3F001F2F3F001F2F3F001F2F
      3F001F2F3F001F2F3F001F2F3F001F2F3F000000000000000000000000009762
      3F0097623F00904F2F0038282800000000000000000097623F00382828000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000C0774F00FFF8F000D0B0A000D0B0A000D0B0A000C0B0
      A000C0A8A000C0A89000803F1F00000000000000000000000000B0906F00B090
      6F00D0B0A000D0B0A000B0906F00B09880005F472F00BCACA500000000000000
      000000000000000000000000000000000000000000005F8090004F5F6F003F4F
      5F002F3F4F001F2F3F00906F5F00F0E0D000B0A09000B0A09000B0A09000B0A0
      9000B0A09000B0A09000B0A090001F2F3F000000000000000000000000009762
      3F000000000000000000382828000000000097623F0097623F00904F2F003828
      2800000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D0885F00FFFFFF00E0905F00D0804F00D0804F00D080
      4F00D0804F00C0A8A000803F1F000000000000000000B0906F00E0C0B000D0C0
      B000E0D0C000F0E0E000FFFFFF00B0906F00A09080005F472F00B9A8A1000000
      0000000000000000000000000000000000006F8090001FB8F0000090D0000090
      D0000090D0000090D00090775F00F0E8E000F0D8D000E0D0C000E0C8C000D0C0
      B000D0B8B000D0B8B000B0A090001F2F3F000000000000000000000000009762
      3F0000000000000000003828280000000000D0774F0000000000000000003828
      280000000000000000000000000000000000B0A090005F472F005F472F005F47
      2F005F472F005F472F00D0906F00FFFFFF00FFFFFF00FFF0F000F0E0D000F0D0
      C000F0C0B000C0B0A000803F1F000000000000000000B0906F00FFFFFF00FFFF
      FF00F0F0F000DECFC000F0E0E000FFFFFF00B0906F00A09080005F472F00B6A4
      9D00000000000000000000000000000000006F8890006FC8F0000FB8F0000FB0
      F00000A8E0000098D000A0806F00F0F0F000C0B0A000C0B0A000C0A8A000B0A0
      9000D0C0B000B0A09000B0A090001F2F3F00000000000000000000000000F3AE
      8D00F3AE8D00B0673F00904F2F0000000000D0774F000000000000000000F3AE
      8D0000000000000000000000000000000000B0A09000FFF0F000F0E0D000E0D8
      D000E0D0C000E0C8C000E0A08000FFFFFF00F0A88000E0986F00E0905F00D080
      4F00D0804F00D0B0A000803F1F000000000000000000B0906F00FFFFFF00FFFF
      FF00FFFFFF00F0F0F000DECFC000F0E0E000FFFFFF00B0906F00A09080005F47
      2F00B3A09900000000000000000000000000808890006FD0F0002FC0F0000FB8
      F00000A8F00000A0E000A0888000FFF8FF00F0F0F000F0E8E000F0D8D000E0D0
      C0006F574F005F4F3F004F473F003F3F3F000000000000000000000000000000
      0000F3AE8D00F3AE8D00A45E48009A5F4300C2754800D0774F00F3AE8D00F3AE
      8D0000000000000000000000000000000000B0A09000FFF8F000E0B08000E0A0
      6F00E0A06F00D0986F00E0A89000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0E8
      E000F0D0C000D0B0A000803F1F00000000000000000000000000B0906F00FFFF
      FF00FFFFFF00FFFFFF00F0F0F000DECFC000F0E0E000FFFFFF00B0906F00A090
      80005F472F00AF9B940000000000000000008090A00080D8F0003FC8F0002FC0
      F0000FB8F00000A0E000B0908000FFFFFF00C0B0A000C0B0A000C0A8A000F0E0
      D000805F4F00D0C8C0005F4F3F00000000000000000000000000000000000000
      000000000000F3AE8D00F3AE8D00D8987B00D0774F00F3AE8D00F3AE8D000000
      000000000000000000000000000000000000C0A89000FFFFFF00FFF8F000F0F0
      F000F0E8E000F0E0D000E0B8A000FFFFFF00FFB09000FFB09000F0D8D000C067
      2F00B0572F00B0572F00832B230000000000000000000000000000000000B090
      6F00FFFFFF00FFFFFF00FFFFFF00F0F0F000DECFC000F0E0E000FFFFFF00B090
      6F00A09080005F472F0000000000000000008098A00090E0F0005FD8F0004FC8
      F0002FC0F0000FB0F000B0989000FFFFFF00FFFFFF00FFF8FF00F0F0F000F0E8
      E00080674F00805F4F0000000000000000000000000000000000000000000000
      00000000000000000000867566006F5F4F0080674F0000000000000000000000
      000000000000000000000000000000000000C0A8A000FFFFFF00FFC8A000F0B8
      9000E0B08000E0A06F00F0C0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C067
      2F00F0C8B000B0572F00832B2300000000000000000000000000000000000000
      0000B0906F00FFFFFF00FFFFFF00FFFFFF00F0F0F000DECFC000F0E0E000FFFF
      FF00B0906F00805F4F0000000000000000008098A000A0E8F00080E0F0006FD8
      F0004FD0F0000FB0F000B0A09000B0989000B0908000A0888000A0806F009077
      5F00906F5F000000000000000000000000000000000000000000000000000000
      0000000000000000000090806F00806F5F006F5F4F0000000000000000000000
      000000000000000000000000000000000000C0B0A000FFFFFF00FFFFFF00FFF8
      FF00FFF0F000F0E8E000F0C8B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00C067
      2F00C0672F00CC483F00832B2300000000000000000000000000000000000000
      000000000000B0906F00FFFFFF00FFFFFF00FFFFFF00F0F0F000DECFC000F0E0
      E000FFFFFF00B0906F00000000000000000090A0A000B0F0FF00A0E8FF0090E0
      F0006FD0F0000FA0D0000FA0D0000FA0D0000F98D0000090D0000090D0000090
      D0002F373F000000000000000000000000000000000000000000000000000000
      000000000000CEBAB500A0989000B3ABA400A0989000C2B3B300000000000000
      000000000000000000000000000000000000D0B8B000FFFFFF00FFD8C000FFD0
      B000F0E0D000B0A09000F0C8B000F0C0B000F0C0B000F0B8A000F0B09000F0B0
      9000BE927000C0800000832B2300000000000000000000000000000000000000
      00000000000000000000B0906F00FFFFFF00FFFFFF00FFFFFF00F0F0F000DECF
      C000F0E0E000B0906F00000000000000000090A0B000B0F0FF00A0F0FF005F80
      90005F6F80004F6F80004F676F004F676F004F5F6F003F576F001F6F90000090
      D0003F475F000000000000000000000000000000000000000000000000000000
      000000000000C2B3B300A098900000000000A0989000C2B3B300000000000000
      000000000000000000000000000000000000D0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0A89000D0C8C000906F5F000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000B0906F00FFFFFF00FFFFFF00FFFFFF00F0F0
      F000B0906F0000000000000000000000000090A8B000B0F0FF00B0F0FF005F88
      900090C8D00090E8F00080D8E0005FC8E0004F98B0003F575F001F80A0000090
      D0004F576F000000000000000000000000000000000000000000000000000000
      000000000000A0989000C2B3B30000000000C3C3C300A0989000000000000000
      000000000000000000000000000000000000E0C0B000FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C0B0A000A0805F00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B0906F00B0906F00B0906F00B090
      6F000000000000000000000000000000000090A8B000B0F0F000B0F0FF00A0F0
      F0006F98A000A0F0F0006C7E850080C8D0004F6F80002F5F80005FC0F0001FB8
      F0004F5F6F000000000000000000000000000000000000000000000000000000
      000000000000C2B3B300000000000000000000000000C2B3B300A09890000000
      000000000000000000000000000000000000E0C0B000E0C0B000D0C0B000D0C0
      B000D0B8B000D0B0A00000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000090A8B00090A8B00090A8
      B0005F90A000A0E8F000A0E8F00090D8E0003F676F006F889000808890006F88
      9000000000000000000000000000000000000000000000000000000000000000
      0000D6C9C900A098900000000000000000000000000000000000C2B3B300C3C3
      C300000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000080B0C00080B0C00080A0B0000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C300000000000000000000000000000000000000000000000000C3C3
      C30000000000000000000000000000000000000000000000000000000000C3C3
      C30000800000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C3000000000000000000000000000000000000000000C3C3
      C30000800000C3C3C300C3C3C3006464FF004040FF004040FF005555FF00C3C3
      C300C3C3C300C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3C3C3004848
      FF00241CED00241CED004848FF00FFFFFF00FFFFFF00FFFFFF00241CED00241C
      ED004848FF00C3C3C30000000000000000000000000000000000C3C3C3000080
      000000800000C3C3C3006464FF004040FF00241CED00241CED00241CED00241C
      ED006464FF00C3C3C30000000000000000000000000000000000000000000000
      0000C3C3C3006A8E4C006E9251006B8F4E0044721F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C300008000000080
      00004848FF00241CED00241CED00008000000080000000800000241CED00241C
      ED0000800000C3C3C300000000000000000000000000C3C3C300008000000080
      0000008000006464FF004040FF00241CED00241CED005555FF004040FF00241C
      ED00241CED00C3C3C3000000000000000000FFFFFF00F4F6F100497525004472
      1F0044721F0044721F0044721F0044721F0044721F00EEF1EC00EFF3ED00EFF3
      ED00EFF3ED00EFF3ED00EFF3ED00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C30000800000008000000080
      0000008000004848FF00241CED00241CED000080000000800000241CED00241C
      ED0000800000C3C3C3000000000000000000C3C3C30000800000008000000080
      0000008000004040FF00241CED00241CED006464FF0000800000008000004040
      FF00241CED00C3C3C3000000000000000000FFFFFF0044721F0044721F004472
      1F0044721F0044721F0044721F0044721F0044721F00B8B8B800E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      0000008000004848FF00241CED00241CED00241CED00241CED00241CED00241C
      ED00FFFFFF00C3C3C30000000000000000000080000000800000008000000080
      00006464FF00241CED00241CED006464FF00FFFFFF00FFFFFF00FFFFFF006464
      FF00241CED00C3C3C3000000000000000000FFFFFF0044721F0044721F004472
      1F0044721F0044721F0044721F0044721F0044721F00315216003D671C00436C
      24003D671C003C661A00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000C3C3C3004848FF00241CED00241CED004848FF004848FF00241C
      ED0000800000C3C3C30000000000000000000080000000800000008000000080
      00004040FF00241CED004040FF00008000000080000000800000008000000080
      000000800000C3C3C3000000000000000000FFFFFF0044721F0044721F004472
      1F0044721F0044721F0044721F0044721F0044721F00B9B9B900E7E7E700E7E7
      E700E7E7E700E7E7E700E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800000C3C3C30000800000FFFF
      FF0000800000C3C3C30000800000241CED004848FF0000800000241CED00241C
      ED0000800000C3C3C300000000000000000000800000C3C3C300008000008080
      FF00241CED00241CED005555FF00008000000080000000800000008000000080
      000000800000C3C3C3000000000000000000FFFFFF0044721F0044721F00FFFF
      FF0044721F00FFFFFF0044721F0044721F0044721F00315216003D671C00436C
      24003D671C003C661A00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800000FFFFFF00C3C3C300FFFF
      FF0000800000C3C3C300FFFFFF00241CED004848FF00FFFFFF00241CED00241C
      ED00FFFFFF00C3C3C300000000000000000000800000FFFFFF00C3C3C3004040
      FF00241CED00241CED006464FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF005555
      FF00241CED00C3C3C3000000000000000000FFFFFF0044721F0044721F00809F
      670099B285006A8E4C0044721F0044721F0044721F00405D28004F7532005579
      39004F7532004E743000E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000FFFFFF000080
      000000800000C3C3C30000800000241CED004848FF0000800000241CED00241C
      ED0000800000C3C3C30000000000000000000080000000800000FFFFFF000080
      00004040FF00241CED00241CED006464FF00008000000080000000800000241C
      ED00241CED00C3C3C3000000000000000000FFFFFF0044721F0044721F004472
      1F00FFFFFF0044721F0044721F0044721F0044721F00305115003C661A00426B
      22003C661A003A651900E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800000C3C3C300FFFFFF00C3C3
      C30000800000C3C3C300008000004848FF00241CED00241CED004848FF00241C
      ED0000800000C3C3C300000000000000000000800000C3C3C300FFFFFF00FFFF
      FF006464FF004040FF00241CED00241CED006464FF00008000006464FF00241C
      ED00241CED00C3C3C3000000000000000000FFFFFF0044721F0044721F00FFFF
      FF0044721F00FFFFFF0044721F0044721F0044721F00315216003D671C00436C
      24003D671C003C661B00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000800000FFFFFF0000800000FFFF
      FF0000800000C3C3C30000800000008000004848FF00241CED00241CED004848
      FF0000800000C3C3C300000000000000000000800000FFFFFF0000800000FFFF
      FF00008000006464FF004040FF00241CED00241CED00241CED00241CED00241C
      ED006464FF00C3C3C3000000000000000000FFFFFF0044721F0044721F005982
      380044721F00EFF3EC0043711E0044721F0044721F00A4A9A000CDD3C800CED4
      C900CDD3C800CDD3C800E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000080000000800000008000000080
      000000800000C3C3C3000080000000800000008000004848FF00241CED004848
      FF0000800000C3C3C30000000000000000000080000000800000008000000080
      000000800000C3C3C3006464FF004040FF00241CED00241CED00241CED006464
      FF0000800000C3C3C3000000000000000000FFFFFF0044721F0044721F004472
      1F0044721F0044721F0044721F0044721F0044721F00315216003D671C00436C
      24003D671C003C661A00E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000C3C3C30000800000008000000080
      000000800000C3C3C300008000000080000000800000008000004848FF000080
      000000800000C3C3C3000000000000000000C3C3C30000800000008000000080
      000000800000C3C3C300008000006464FF00241CED00241CED006464FF000080
      000000800000C3C3C3000000000000000000FFFFFF0044721F0044721F004472
      1F0044721F0044721F0044721F0044721F0044721F00B8B8B800E6E6E600E6E6
      E600E6E6E600E6E6E600E6E6E600000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000C3C3C300008000000080
      000000800000C3C3C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C3C3C300000000000000000000000000C3C3C300008000000080
      000000800000C3C3C300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00C3C3C3000000000000000000FFFFFF004976260044721F004472
      1F0044721F0044721F0044721F0044721F0044721F00335418003F681E003F68
      1E003F681E003F681E003F681E00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000C3C3C3000080
      000000800000C3C3C30000800000008000000080000000800000008000000080
      000000800000C3C3C30000000000000000000000000000000000C3C3C3000080
      000000800000C3C3C30000800000008000000080000000800000008000000080
      000000800000C3C3C30000000000000000000000000000000000000000000000
      0000C3C3C3006E9251006E92510044721F0044721F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C3C3
      C30000800000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C3000000000000000000000000000000000000000000C3C3
      C30000800000C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3C300C3C3
      C300C3C3C300C3C3C30000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000400000000100010000000000000200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FFFF000000000000FFFF000000000000
      FF3F000000000000FF1F000000000000FF8F000000000000FFC7000000000000
      FFE3000000000000C0E3000000000000C1E3000000000000C1E3000000000000
      C0E3000000000000C003000000000000D803000000000000FC07000000000000
      FF0F000000000000FFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFF3FF
      FC01E001FC00E19FFC01C03F8000ED0FFC01801F0000ED6F0001800F0000E16F
      000180070000F00F0001C0030001F81F0001E0030003FC7F0001F0030007FC7F
      0001F8030007F83F0001FC030007F93F00FFFE070007F93F01FFFF0F0007FB9F
      03FFFFFF800FF3CFFFFFFFFFF8FFF7EFE003E003FFFFFFFFC003C003F07FFFFF
      800380030001FFFF000300030001FFFF000300030001FFFF000300030001FFFF
      000300030001FEFF000300030001FC7F000300030001F83F000300030001F01F
      000300030001FFFF000300030001FFFF000300030001FFFF800380030001FFFF
      C003C003F07FFFFFE003E003FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object imgMenus: TImageList
    ShareImages = True
    Left = 331
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
      2600573F2600624933000000000000000000B0A09000B0A09000B0A09000654E
      37005F472F005F472F005F472F005F472F005F472F005F472F005F472F005F47
      2F005F472F005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000A8522E00A8522E0000000000000000000000
      00000000000000000000000000000000000000000000000000007C644C007959
      48007C594A006E5A4A0069543E006A5138006A4D38006A48390063453200573F
      2600573F2600624933000000000000000000B0A09000B0A09000B0A09000E5E1
      DD00B0A29300A5948300A5948300A5948300A5948300A5948300A5948300A594
      8300998774005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000A8522E00A8522E00A8522E00A8522E00000000000000
      000000000000000000000000000000000000000000009D857B00DDCCBC00AB9B
      8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B8B00AB9B
      8B00AB9B8B00AB9B8B005F47300000000000B0A09000B0A09000B0A09000FEFD
      FC00FEFDFC00EAE2E300E2DDDB00DFD8CF00DFD2C500DACABF00D3C1BA00CAB6
      AA00A1907E005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8522E00A8522E00ED875400C2694200C2694200C2694200A8522E00A852
      2E000000000000000000000000000000000000000000A78E8800F7DFD600FBF4
      F300F7DFD600F7DFD600F7DFD600F7DFD600F7DFD600F7DFD60001980000089D
      000020921500745343005E462E008D786800B0A09000B0A09000B0A09000FEFD
      FC00FEFDFC00FEFDFC00F9F4F200F1EEEA00EEE4DF00EBD9D400E5D0C800D3C0
      B300A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000A8522E00A8522E00ED875400C2694200C2694200C2694200A8522E00A852
      2E0000000000000000000000000000000000AF918200D6CBC200FFFFFF00FFFF
      FD00FFFDFB00FFFDFC00FFFFFF00FBF4F300FCEEEB00F7DFD60000FF0F0000FF
      FF00178F0500825B4D006A4A3900614B3300B0A09000B0A09000B0A09000FEFD
      FC00FFFFFF00FEFDFC00FEFDFC00FAF4F200F3E9E700EFDFDC00E9D8D200D4C6
      BA00A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000A852
      2E00FDA27800FDA27800ED875400ED875400ED875400C2694200C2694200C269
      4200A8522E00000000000000000000000000AB887800EEE5DE00FFFFFF00FFFF
      FF00FFFFFF00FFFFFF00FFFFFF00FFFEFB00FFF9F900F7DFD60000FF0F0000FF
      0F0018920B0090665E006B5847005C442B00B0A09000B0A09000B6A39000FEFD
      FC00FFFFFF00FFFFFF00FEFDFC00FEF7F500F6EEEB00F0E6E300ECDED800D9C9
      BE00A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8522E00A8522E00FDA2
      7800FF9F7200FF9F7200FF9F7200ED875400ED875400ED875400C2694200C269
      4200C2694200A8522E00A8522E0000000000AB907900D6C9BA00DBC7C200D0C2
      B700C4B8AC00C1B0A000B9A79D00AE9E9300A9928700A9928700A8908700846C
      5B00846C5B0091776B007761570068503700B0A09000B0A09000BDA69500FEFD
      FC00FFFFFF00FFFFFF00FEFDFC00FEFDFC00F9F5F100F2ECE700EFE1DB00DECB
      C400A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A8522E00A8522E00FDA2
      7800FF9F7200FF9F7200FF9F7200ED875400ED875400ED875400C2694200C269
      4200C2694200A8522E00A8522E0000000000B5968200FAF6F300F9F7F600F8F5
      F400F5F4F100F5F3F000F4F1F000F2F0EF00F1EEEB00F2EBE900F0E9EA00EEE8
      E700E8E1E000957E7200886D5B00785B4800B0A09000B0A09000C0AA9C00FEFD
      FC00FFFFFF00FFFFFF00FFFFFF00FEFDFC00FEFDFC00F6F0ED00F0E6E100E0D0
      C900A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8522E00ED875400ED875400ED87
      5400C2694200C2694200FF9F7200FF9F7200FF9F7200ED875400A8522E00A852
      2E00A8522E00A8522E00A8522E00A8522E00C9B1A700D4C4B400E4D3C900DCCD
      C900E2D0C800DDCBC100D3C1B700CBB9AF00C3AEA300BAA39700AE9C9300A9A1
      9700B2A49800A7928400947A61007D5C4D00B0A09000B0A09000C3AEA000FEFD
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFDFC00FCF9F900F2ECE800E0D5
      CE00A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A8522E00ED875400ED875400ED87
      5400C2694200C2694200FF9F7200FF9F7200FF9F7200ED875400A8522E00A852
      2E00A8522E00A8522E00A8522E00A8522E00CEBDB500BFAC9E00C3AA9900CBB1
      A900E0CEC500E1CCC700D8C4BF00D2BAB300C4B1A400B9A69800A89087008872
      6400846C5B00AD9D8D00AE99850079584800B0A09000B0A09000CAB1A000FEFD
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDFF00FCF9F800F2EEE900D7CE
      C700A29180005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800FF9F7200FF9F7200FF9F7200A8522E00A852
      2E000000000000000000000000000000000000000000DED4D000CEC2B800F7F4
      F200FCFBFA00FDFAFB00F9F7F700F7F4F300F6F2EE00F4F0EC00F2EBE900B69F
      99007B5F5100AB9B8B00B9A699008F756400B0A09000B0A09000D0B4A100FEFD
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FAF8F500E2DBD400B7AA
      9E00998774005F472F00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800F8B69800F8B69800FF9F7200A8522E00A852
      2E00000000000000000000000000000000000000000000000000ECE2E200E9E2
      DC00FDFCFB00FCFAF900E6E1DB00DED9D400DFD3D000DFCDC800E5D5CC00D3C1
      BB0090746B0082615300B9A49E00CEBDB500B0A09000B0A09000D0B8A800FEFD
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00EDE8E50069513A006951
      3A0069513A0069513A00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C2694200C2694200F8B69800F8B69800F8B69800FF9F7200A8522E00A852
      2E0000000000000000000000000000000000000000000000000000000000E2D2
      C800F3EDEA00FEFDFD00FFFFFF00FBFBFB00FAF8F900FAF5F600F7F0EE00F2EC
      E700C3ADA4007D625200B5A1980000000000B0A09000B0A09000D0BBB000FEFD
      FC00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FEFDFC00D0B4A900F3F1EE00EEEB
      E900D9D2CD00927C6B00B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800F8B69800F8B69800F8B69800F8B69800C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      0000D4C0B900F7F4F200FCFBFB00E3DEDB00D6D0C900D7CBC400D2BFBC00D3C8
      C700D4CBC200887264008565560000000000B0A09000B0A09000D5C0B000FEFD
      FC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00D0B4A900F6F3F100E6E2
      DF008F7B6D0000000000B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800FDA27800C2694200C2694200C2694200C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      000000000000E0CECE00F9F5F500FAF9F700FBF9F700FBF9F700FBF8F900F7EF
      F000E7DAD100C6AEA3008A6D5C0000000000B0A09000B0A09000E0C0B000FEFD
      FC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00FEFDFC00D0B4A900E9E3DF00FCE7
      D6000000000000000000B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000FDA27800FDA27800FDA27800C2694200C2694200C2694200C2694200C269
      4200000000000000000000000000000000000000000000000000000000000000
      00000000000000000000D6C6BA00CDBDAC00CEBDAD00CEBDAD00CEBEAD00CEBE
      AE00D0C0B000D2C3B300D8CBBD0000000000B0A09000B0A09000E0C0B000E0C0
      B000E0C0B000E0C0B000E0C0B000D6C0B000D0BCB000D0B4A900D5B8AA000000
      00000000000000000000B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000BD686100B0574E00A350
      4F00A2505200A34D4E009A4548008B3E46008B3E34008C3E3500843D3B007E38
      3F007D364000763640006B373C006F372C000000000000000000000000000000
      00000000000000000000C0A89000FFFFFF00FFFFFF00FFFFFF00FFF8F000F0F0
      F000F0E8E000F0D8D000B0A09000B0A090000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00C3C3C3000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD667000EA8B8A00E2838400C057
      3D00713317006C5E5200C9BDB700BFB3AD00CBB6B600D1C4BC00636363007D3F
      3700A03E2E009E3B2F00923633006B373E000000000000000000000000000000
      00000000000000000000C0A8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      F000F0E8E000F0E0E000B0A09000B0A090000000000000000000000000004637
      9100A09E96000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F00B0E4EF009DCAF50094B5
      D500000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CD696B00F9949B00F18B8700E279
      72009C5F56005B5144006A655700A6918A00EFE0E100F0E9E20096908400934F
      4000A03D3300A03E3600993B3100793640000000000000000000000000000000
      00000000000000000000C0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFF8
      FF00F0F0F000F0E8E000B0A09000B0A090000000000000000000AA9EDE005436
      D900463791008986900000000000000000000000000000000000000000000000
      00007E6FB900472AC600000000000000000000000000B0E4EF00B0E4EF0069A3
      D1005992B6000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC716A00FD9B9E00F2908E00F18A
      8400B06F6900463B330017181000665C4F00FFEAE600FCEEE2009B9681009A54
      4500AB423A00A6423C00983D39007D3C3F000000000000000000000000000000
      00000000000000000000D0B0A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFF8F000F0F0F000B0A09000B0A090000000000000000000AA9EDE004E2E
      E200300EC70050457E00A19FA10000000000000000000000000000000000745F
      D1004124D1009182CC000000000000000000000000000000000073ACCC005497
      C200599CC600649FC40000000000000000000000000000000000000000000000
      000000000000000000000000000000000000CC737300FCA1A600F99B9C00F691
      8F00AF716A0050413B00332B2600584E4200B29B9300B0A19100847A6900A259
      4E00B64C4600AD4844009F413E007C3E3F00CD8D8F00C2696300AE554E00964A
      46009D5A59009B5D6000D0B8A000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00FFFFFF00B0A09000B0A09000B0A09000000000000000000000000000AA9E
      DE00421FDF003B20B100635A8600AEADAC000000000000000000806CD8005034
      CA00A89DD60000000000000000000000000000000000000000000000000072AC
      CD0065A5CC006BAAD10070ACCF00000000000000000000000000000000000000
      000000000000000000000000000000000000D2767B00FBA8AE00FFA8A900FD9E
      9E00C9817E009C696300A06B630099656100935D5C008C5E550097656200B45E
      5C00BC565300B34F4B00A647420083413E00D6717600ED8B8B00D76F62007D4C
      3B007E736800AC9D9600D0B8B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00B0A090005F472F005F472F005F472F000000000000000000000000000000
      0000AA9EDE004C2DD800472FAD00676084007A70A000624ACC00583ECD00AFA3
      DC00000000000000000000000000000000000000000000000000000000000000
      000091BDD9007CB6D90080BADC0070ACCF000000000000000000000000000000
      000000000000000000000000000000000000DE7D7E00FDAFB000FFB5B400F89D
      9D00EF8B8A00EB847D00E97B7400DD747100DB6E6F00CE676200CB5F5F00BD58
      5200BD574F00BC565200AB4E4C008E463D00D8797600F6939400EE8882009360
      59003B352C0063594E00D0C0B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0A89000D0C8C0005F472F005F472F000000000000000000000000000000
      000000000000AA9EDE005537D6003E25B1003B22B2004C33BF00A79DD1000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000070ABCC0095C8E50095CAE60070ACCF0000000000000000000000
      000000000000000000000000000000000000DD858D00FDB6BF00FEB7B100E080
      7D00C6625A00BF625500C05C5200BF544400B0563400B24E3500A4472800A03F
      1700AF4C3700C05C5800B7534C008D463F00D9808200FBA0A300F8969500A16A
      640058433D00614D4400E0C0B000FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
      FF00C0A8A0005F472F0000000000000000000000000000000000000000000000
      00000000000000000000755DDA003614D4002F0FC8005442A700A9A6AE000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000009AC7E000ACD6ED00A8D7EF0070ACCF00000000000000
      000000000000000000000000000000000000DD8C8B00FFC3C200D46D6600EDCC
      C800FFFFFF00FFFFFF00FFFFFA00F1FAFB00F4F3EB00F5E3DC00E7DBCD00E6DA
      D300C0816700A73D2000B65C61008B444F00E1868900FDACAE00FBA1A100D682
      7E00C4746D00BD6E6900E0C0B000E0C0B000E0C0B000E0C0B000D0C0B000D0B8
      B000D0B0A0000000000000000000000000000000000000000000000000000000
      000000000000BDB4DC00644CCE005134D2005539D0005842B7006F649700A9A7
      AD00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000009ECEE900C1E3F500B9E1F60070ACCF000000
      000000000000000000000000000000000000DC949C00FFC1C200D6777700ECCA
      C900FFFFFF00FFFEFE00FEFCF900FCF6ED00EEEFF000F0E7E000EFD9D100E7D7
      CA00BD856B00AE462C00C7635E009C4D4E00E58F9600FDB5B600EC939000CE6B
      6400CA665C00C75D5200BA5A4200B3503A00A8472900B5514300B95651009648
      4100000000000000000000000000000000000000000000000000000000000000
      0000B9AFD9005E44CD005035C800AA9EDE00000000007C64E0005C44C3006556
      9E009C99A5000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000A4D4EC00D2EDFA00C6EAFB0070AC
      CF0000000000000000000000000000000000EB9B9D00FFC1C300E17D7800F1CC
      CA00FFFFFF00FFFFFF00FFFEFE00FEFCF900FCF6EF00EFEFED00F0E6E000EFE0
      D700CB8C7800B64D3C00C76868009D4D4D00E59B9C00E9999600E6B4B100FFFF
      FF00FFFEFC00F6FAF800F3EEE800EEDFD500E7D9D000B9705600B14E41009A4C
      530000000000000000000000000000000000000000000000000000000000C0B8
      D300553DCC004123CA00A397D9000000000000000000000000008972E400593F
      CC006151A800A7A4A20000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A7D9F100B0E4EF00CAE8
      F500ABC6D400000000000000000000000000EFA39D00FFC1C200E3838100F2CF
      CE00FFFFFF00FFFFFF00FFFFFF00FFFEFE00FFFCF900FAF4F000F1EFEB00F2EC
      E600CE958200BE564300D36F76009B4C4C00EAA2A600ED9D9D00E9B7B500FFFF
      FF00FEFDFC00FDF9F500F3F0ED00EFE5DF00ECDCD200BF786200BC574B00A753
      5200000000000000000000000000000000000000000000000000CDC3E400573F
      CE003419D0009385D4000000000000000000000000000000000000000000AA9E
      DE008C79E7006151A80000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000AEDBF000CCD3
      D600A7ABAD00858A8B000000000000000000EEAAA600FFC1C200EA8A8E00F5D1
      D300FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFBF800F9F5F000F3F5
      F200D49D8E00AC483A009F525600A8534E00F2A9A600F0A1A000EDBBB900FFFF
      FF00FEFEFE00FEFDFD00FCF8F400F3EFEB00F1E9E300C9836F00C5605900A854
      55000000000000000000000000000000000000000000000000008167E4002F16
      E0008777D3000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000BABE
      C000797B7A008488AD007878BC0000000000EEAFAF00FEC2C200F68F9400FBD5
      D700FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFDF800FBFD
      FB00DBA49C00A24039007D3E4100B3585500F2B1AE00F6A6A800F4C0C300FFFF
      FF00FFFFFF00FFFFFF00FFFEFE00FCF9F600F6F7F300CA887A00A0494500A552
      5000000000000000000000000000000000000000000000000000A998E900836B
      E400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000C3C3C3000000FF003031C5009A9ADC00EFB0AF00FABFBD00FC9A9A00FBCE
      CE00FBF0F100FBEBEC00FAE9EA00F8E9EA00F8E7E700F8E7E700F8E6E900FAE6
      E200DE9F9900BD595800B95E6400B65B6300F2B3B300FAAAAB00FAC2C300FDF7
      F700FCF4F400FBF3F400FBF3F300FBF2F100FAF1EE00D18C8600A54D4D00AE56
      5900000000000000000000000000000000000000000000000000000000000000
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
      F00F800000000000F00FC00000000000F00FE00100000000F00FF00100040000
      F00FF801000C0000F00FFC01001C0000FFFF1FFF8000FC00FFFF1FFF0000FC00
      E7FF0FFF0000FC00C3F387FF0000FC00C1E3C3FF00000000E0C7E1FF00000000
      F00FF0FF00000000F81FF87F00000003FC1FFC3F00000007F80FFE1F0000000F
      F087FF0F0000000FE1C3FF870000000FC3E3FFC30000000FC7FFFFE10000000F
      CFFFFFF00000000FFFFFFFF80000000FF00FF81FF00F807FF00FE007E007807F
      F00FC003E007007FF00F800187E10000F00F800101F00000F00F000010F80000
      0000000010F800000000000018780000800100001E180000800100001F080000
      E00700001F080000F00F80010F80E000F00F800187E1F001FC3FC003E007F803
      FE7FE007E007FC07FE7FF81FF00FFE0F00000000000000000000000000000000
      000000000000}
  end
  object AdvStickyPopupMenu1: TAdvStickyPopupMenu
    ButtonBar = <>
    MenuItems = <>
    Version = '1.3.1.1'
    Left = 304
  end
  object AdvPopupMenu1: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.4'
    Left = 176
    object Nuevo1: TMenuItem
      Action = Nuevo
    end
    object Nuevaalternativa1: TMenuItem
      Action = NuevaAlternativa
    end
    object Nuevocomplemento1: TMenuItem
      Action = NuevoComplemento
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Guardar1: TMenuItem
      Action = Guardar
    end
    object Guardarycerrar1: TMenuItem
      Action = GuardarCerrar
    end
    object Guardarynuevo1: TMenuItem
      Action = GuardarNuevo
    end
    object N5: TMenuItem
      Caption = '-'
    end
    object Exportaraexcel1: TMenuItem
      Action = Exportar_a_excel
    end
    object Importaralternativas2: TMenuItem
      Action = Importar_alternativas
    end
    object Importarcomplementos2: TMenuItem
      Action = Importar_complementos
    end
  end
  object axv_PopMenuAlternativas: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.4'
    Left = 392
    Top = 40
    object Nuevaalternativa2: TMenuItem
      Action = NuevaAlternativa
    end
    object Eliminaralternativa1: TMenuItem
      Action = EliminarAlternativa
    end
  end
  object axv_PopMenuComplementos: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.4'
    Left = 416
    Top = 40
    object EliminarComplemento1: TMenuItem
      Action = NuevoComplemento
    end
    object EliminarComplemento2: TMenuItem
      Action = EliminarComplemento
    end
  end
  object AdvToolBarOfficeStyler2: TAdvToolBarOfficeStyler
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
    Left = 421
  end
  object ActionList2: TActionList
    Images = ImgLstgrdArticulos
    Left = 267
    Top = 1
    object Exportar_a_excel: TAction
      Caption = 'Exportar a excel'
      ImageIndex = 2
      OnExecute = Exportar_a_excelExecute
    end
    object Importar_complementos: TAction
      Caption = 'Importar complementos'
      Enabled = False
      ImageIndex = 1
      OnExecute = Importar_complementosExecute
    end
    object Importar_alternativas: TAction
      Caption = 'Importar alternativas'
      Enabled = False
      ImageIndex = 0
      OnExecute = Importar_alternativasExecute
    end
    object EditDelete1: TEditDelete
      Category = 'Edit'
      Caption = 'Borr&ar'
      Hint = 'Delete|Erases the selection'
      ImageIndex = 5
      ShortCut = 46
    end
    object EditCut1: TEditCut
      Category = 'Edit'
      Caption = 'Cor&tar'
      Hint = 'Cut|Cuts the selection and puts it on the Clipboard'
      ImageIndex = 7
      ShortCut = 16472
    end
    object EditCopy1: TEditCopy
      Category = 'Edit'
      Caption = '&Copiar'
      Hint = 'Copy|Copies the selection and puts it on the Clipboard'
      ImageIndex = 4
      ShortCut = 16451
    end
    object EditPaste1: TEditPaste
      Category = 'Edit'
      Caption = '&Pegar'
      Hint = 'Paste|Inserts Clipboard contents'
      ImageIndex = 6
      ShortCut = 16470
    end
    object EditSelectAll1: TEditSelectAll
      Category = 'Edit'
      Caption = '&Seleccionar todo'
      Hint = 'Select All|Selects the entire document'
      ShortCut = 16449
    end
    object EditUndo1: TEditUndo
      Category = 'Edit'
      Caption = '&Deshacer'
      Hint = 'Undo|Reverts the last action'
      ImageIndex = 8
      ShortCut = 16474
    end
  end
  object popupEdicion: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.4'
    Left = 232
    object Deshacer1: TMenuItem
      Action = EditUndo1
    end
    object MenuItem4: TMenuItem
      Caption = '-'
    end
    object Cortar1: TMenuItem
      Action = EditCut1
    end
    object Copiar1: TMenuItem
      Action = EditCopy1
    end
    object Pegar1: TMenuItem
      Action = EditPaste1
    end
    object N3: TMenuItem
      Caption = '-'
    end
    object EliminarComplemento3: TMenuItem
      Action = EditDelete1
    end
    object Selecionartodo1: TMenuItem
      Action = EditSelectAll1
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Modificar1: TMenuItem
      Action = Modificar
    end
    object Eliminar1: TMenuItem
      Action = Eliminar
    end
  end
  object popupVer: TAdvPopupMenu
    MenuStyler = AdvMenuOfficeStyler1
    Version = '2.5.3.4'
    Left = 204
    object Barra_de_gerramienbtas: TMenuItem
      AutoCheck = True
      Caption = 'Barra de herramientas'
      Checked = True
      OnClick = Barra_de_gerramienbtasClick
    end
  end
  object ExcelIO1Alternativas: TAdvGridExcelIO
    AdvStringGrid = sstrgAlternativas
    Options.ImportCellFormats = False
    Options.ImportCellSizes = False
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.2.1'
    Left = 341
    Top = 40
  end
  object ExcelIO1Complementos: TAdvGridExcelIO
    AdvStringGrid = strgComplementos
    Options.ImportCellFormats = False
    Options.ImportCellSizes = False
    Options.ExportOverwriteMessage = 'File %s already exists'#13'Ok to overwrite ?'
    Options.ExportRawRTF = False
    UseUnicode = False
    Version = '3.2.1'
    Left = 368
    Top = 40
  end
  object OpenDialog1: TOpenDialog
    Left = 312
    Top = 40
  end
  object AdvMenuOfficeStyler1: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2003Blue
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 5149182
    ButtonAppearance.DownColorTo = 9556991
    ButtonAppearance.HoverColor = 13432063
    ButtonAppearance.HoverColorTo = 9556223
    ButtonAppearance.DownBorderColor = clNavy
    ButtonAppearance.HoverBorderColor = clNavy
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Segoe UI'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 16773091
    IconBar.ColorTo = 14986631
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    SelectedItem.BorderColor = clNavy
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -9
    SelectedItem.NotesFont.Name = 'Segoe UI'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 16105118
    RootItem.ColorTo = 16240050
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 16773091
    RootItem.SelectedColorTo = 15185299
    RootItem.SelectedBorderColor = 9841920
    RootItem.HoverColor = 13432063
    RootItem.HoverColorTo = 10147583
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.Background.ColorTo = clMenuHighlight
    SideBar.SplitterColorTo = clBlack
    SideBar.BorderColor = clSkyBlue
    Separator.Color = 13339754
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -9
    NotesFont.Name = 'Segoe UI'
    NotesFont.Style = []
    MenuBorderColor = 9841920
    Left = 448
    Top = 40
  end
end

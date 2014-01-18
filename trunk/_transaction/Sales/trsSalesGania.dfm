object frmTrsSales: TfrmTrsSales
  Left = 131
  Top = 156
  Width = 676
  Height = 472
  Caption = 'Penjualan'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  PopupMenu = frmMainMenu.MenuShortCut
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object suiPanel1: TsuiPanel
    Left = 0
    Top = 40
    Width = 668
    Height = 65
    UIStyle = DeepBlue
    BorderColor = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Caption = 'Header Transaksi [F3]'
    ShowButton = False
    CaptionFontColor = clWhite
    Align = alTop
    TabOrder = 0
    Color = clWhite
    PopupMenu = frmMainMenu.MenuShortCut
    DesignSize = (
      668
      65)
    object lblTransaksi: TLabel
      Left = 605
      Top = 2
      Width = 60
      Height = 14
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'lblTransaksi'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object Label2: TLabel
      Left = 469
      Top = 29
      Width = 40
      Height = 13
      Alignment = taRightJustify
      Anchors = [akTop, akRight]
      Caption = 'Tgl Trx :'
    end
    object dtpTransaction: TDateTimePicker
      Left = 514
      Top = 27
      Width = 150
      Height = 21
      Anchors = [akTop, akRight]
      CalAlignment = dtaLeft
      Date = 38825.3586227083
      Time = 38825.3586227083
      DateFormat = dfShort
      DateMode = dmComboBox
      Kind = dtkDate
      ParseInput = False
      TabOrder = 2
      OnChange = dtpTransactionChange
      OnEnter = txtSpecEnter
      OnKeyDown = dtpTransactionKeyDown
    end
    object txtNotes: TAdvEdit
      Left = 89
      Top = 50
      Width = 322
      Height = 21
      AutoFocus = False
      EditAlign = eaLeft
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'No. Faktur :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akLeft, akTop, akRight]
      Color = clWindow
      Enabled = True
      HintShowLargeText = False
      OleDropTarget = False
      OleDropSource = False
      Signed = False
      TabOrder = 5
      Transparent = False
      Visible = False
      OnChange = txtNotesChange
      OnEnter = txtSpecEnter
    end
    object txtSpec: TAdvEdit
      Left = 89
      Top = 27
      Width = 322
      Height = 21
      AutoFocus = False
      EditAlign = eaLeft
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Customer [F2] :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akLeft, akTop, akRight]
      Color = clWindow
      Enabled = True
      HintShowLargeText = False
      OleDropTarget = False
      OleDropSource = False
      Signed = False
      TabOrder = 0
      Transparent = False
      Visible = True
      OnChange = txtNotesChange
      OnEnter = txtSpecEnter
      OnKeyDown = txtSpecKeyDown
      OnKeyPress = txtSpecKeyPress
    end
    object btnSpec: TButton
      Left = 392
      Top = 30
      Width = 16
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '...'
      TabOrder = 1
      TabStop = False
      OnClick = btnSpecClick
    end
    object txtOrder: TAdvEdit
      Left = 81
      Top = 73
      Width = 322
      Height = 21
      AutoFocus = False
      EditAlign = eaLeft
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Order :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akLeft, akTop, akRight]
      Color = clWindow
      Enabled = True
      HintShowLargeText = False
      OleDropTarget = False
      OleDropSource = False
      ReadOnly = True
      Signed = False
      TabOrder = 3
      Transparent = False
      Visible = False
      OnChange = txtNotesChange
      OnEnter = txtSpecEnter
    end
    object btnOrder: TButton
      Left = 408
      Top = 52
      Width = 16
      Height = 16
      Anchors = [akTop, akRight]
      Caption = '...'
      TabOrder = 4
      TabStop = False
      Visible = False
    end
  end
  object suiPanel3: TsuiPanel
    Left = 0
    Top = 105
    Width = 668
    Height = 333
    UIStyle = DeepBlue
    BorderColor = clBlack
    Caption = 'Detail Entry Barang [F4]'
    ShowButton = False
    CaptionFontColor = clWhite
    Align = alClient
    TabOrder = 1
    Color = clSilver
    PopupMenu = frmMainMenu.MenuShortCut
    DesignSize = (
      668
      333)
    object grid: TAdvStringGrid
      Left = 4
      Top = 24
      Width = 660
      Height = 190
      Cursor = crDefault
      Align = alTop
      Anchors = [akLeft, akTop, akRight, akBottom]
      ColCount = 18
      Ctl3D = False
      DefaultRowHeight = 30
      DefaultDrawing = False
      FixedCols = 1
      RowCount = 5
      FixedRows = 1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      GridLineWidth = 1
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goRangeSelect, goDrawFocusSelected, goRowSizing, goColSizing, goEditing]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 0
      OnEnter = gridEnter
      OnKeyDown = gridKeyDown
      OnKeyPress = gridKeyPress
      OnSelectCell = gridSelectCell
      GridLineColor = clSilver
      ActiveCellShow = False
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = clGray
      Bands.Active = True
      Bands.PrimaryColor = clInfoBk
      Bands.PrimaryLength = 1
      Bands.SecondaryColor = clWindow
      Bands.SecondaryLength = 1
      Bands.Print = False
      AutoNumAlign = False
      AutoSize = False
      VAlignment = vtaTop
      EnhTextSize = True
      EnhRowColMove = False
      SizeWithForm = False
      Multilinecells = False
      OnGetAlignment = gridGetAlignment
      OnRowChanging = gridRowChanging
      OnDblClickCell = gridDblClickCell
      OnCanEditCell = gridCanEditCell
      OnCellValidate = gridCellValidate
      OnGetEditorType = gridGetEditorType
      DragDropSettings.OleAcceptFiles = True
      DragDropSettings.OleAcceptText = True
      SortSettings.AutoColumnMerge = False
      SortSettings.Column = 2
      SortSettings.Show = False
      SortSettings.IndexShow = False
      SortSettings.Full = True
      SortSettings.SingleColumn = False
      SortSettings.IgnoreBlanks = False
      SortSettings.BlankPos = blFirst
      SortSettings.AutoFormat = True
      SortSettings.Direction = sdAscending
      SortSettings.FixedCols = False
      SortSettings.NormalCellsOnly = False
      SortSettings.Row = 0
      FloatingFooter.Color = clBtnFace
      FloatingFooter.Column = 0
      FloatingFooter.FooterStyle = fsFixedLastRow
      FloatingFooter.Visible = False
      ControlLook.Color = clBlack
      ControlLook.CheckSize = 15
      ControlLook.RadioSize = 10
      ControlLook.ControlStyle = csClassic
      ControlLook.FlatButton = False
      EnableBlink = False
      EnableHTML = True
      EnableWheel = True
      ExcelStyleDecimalSeparator = True
      Flat = True
      HintColor = clInfoBk
      SelectionColor = clHighlight
      SelectionTextColor = clHighlightText
      SelectionRectangle = False
      SelectionResizer = False
      SelectionRTFKeep = False
      HintShowCells = False
      HintShowLargeText = False
      HintShowSizing = False
      PrintSettings.FooterSize = 0
      PrintSettings.HeaderSize = 0
      PrintSettings.Time = ppNone
      PrintSettings.Date = ppNone
      PrintSettings.DateFormat = 'dd/mm/yyyy'
      PrintSettings.PageNr = ppNone
      PrintSettings.Title = ppNone
      PrintSettings.Font.Charset = DEFAULT_CHARSET
      PrintSettings.Font.Color = clWindowText
      PrintSettings.Font.Height = -11
      PrintSettings.Font.Name = 'MS Sans Serif'
      PrintSettings.Font.Style = []
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
      PrintSettings.Borders = pbNoborder
      PrintSettings.BorderStyle = psSolid
      PrintSettings.Centered = False
      PrintSettings.RepeatFixedRows = False
      PrintSettings.RepeatFixedCols = False
      PrintSettings.LeftSize = 0
      PrintSettings.RightSize = 0
      PrintSettings.ColumnSpacing = 0
      PrintSettings.RowSpacing = 0
      PrintSettings.TitleSpacing = 0
      PrintSettings.Orientation = poPortrait
      PrintSettings.PageNumberOffset = 0
      PrintSettings.MaxPagesOffset = 0
      PrintSettings.FixedWidth = 0
      PrintSettings.FixedHeight = 0
      PrintSettings.UseFixedHeight = False
      PrintSettings.UseFixedWidth = False
      PrintSettings.FitToPage = fpNever
      PrintSettings.PageNumSep = '/'
      PrintSettings.NoAutoSize = False
      PrintSettings.NoAutoSizeRow = False
      PrintSettings.PrintGraphics = False
      HTMLSettings.Width = 100
      HTMLSettings.XHTML = False
      Navigation.AllowInsertRow = True
      Navigation.AdvanceOnEnter = True
      Navigation.AdvanceInsert = True
      Navigation.AdvanceDirection = adLeftRight
      Navigation.AllowClipboardRowGrow = True
      Navigation.AllowClipboardColGrow = True
      Navigation.AdvanceAuto = True
      Navigation.InsertPosition = pInsertAfter
      Navigation.CopyHTMLTagsToClipboard = True
      Navigation.HomeEndKey = heFirstLastColumn
      ColumnSize.Stretch = True
      ColumnSize.StretchColumn = 2
      ColumnSize.Location = clRegistry
      CellNode.Color = clSilver
      CellNode.NodeColor = clBlack
      CellNode.ShowTree = False
      SizeWhileTyping.Width = True
      MaxEditLength = 0
      IntelliPan = ipVertical
      URLColor = clBlue
      URLShow = False
      URLFull = False
      URLEdit = False
      ScrollType = ssNormal
      ScrollColor = clNone
      ScrollWidth = 17
      ScrollSynch = False
      ScrollProportional = False
      ScrollHints = shNone
      OemConvert = False
      FixedFooters = 0
      FixedRightCols = 0
      FixedColWidth = 64
      FixedRowHeight = 30
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FixedAsButtons = False
      FloatFormat = '%.2f'
      IntegralHeight = False
      WordWrap = True
      ColumnHeaders.Strings = (
        '#'
        'Kode'
        'Desc          '
        'Qty'
        'Satuan'
        'Harga '
        'Total'
        'colItemId'
        'colProfit'
        'colModID'
        'H.Beli'
        'colStok')
      Lookup = False
      LookupCaseSensitive = False
      LookupHistory = False
      BackGround.Top = 0
      BackGround.Left = 0
      BackGround.Display = bdTile
      BackGround.Cells = bcNormal
      Filter = <>
      ColWidths = (
        64
        64
        28
        64
        53
        68
        202
        64
        50
        64
        64
        64
        64
        191
        64
        64
        64
        64)
    end
    object txtSubtotal: TAdvEdit
      Left = 512
      Top = 220
      Width = 150
      Height = 24
      TabStop = False
      OnValueValidate = txtSubtotalValueValidate
      AutoFocus = False
      EditAlign = eaRight
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Subtotal :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akRight, akBottom]
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HintShowLargeText = False
      ParentFont = False
      OleDropTarget = False
      OleDropSource = False
      ReadOnly = True
      Signed = False
      TabOrder = 1
      Transparent = False
      Visible = True
      OnEnter = txtSpecEnter
      OnKeyDown = txtDisc1KeyDown
    end
    object txtDisc1: TAdvEdit
      Left = 512
      Top = 246
      Width = 150
      Height = 24
      TabStop = False
      OnValueValidate = txtSubtotalValueValidate
      AutoFocus = False
      EditAlign = eaRight
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Discount :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akRight, akBottom]
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HintShowLargeText = False
      ParentFont = False
      OleDropTarget = False
      OleDropSource = False
      ReadOnly = True
      Signed = False
      TabOrder = 2
      Transparent = False
      Visible = True
      OnEnter = txtSpecEnter
      OnKeyDown = txtDisc1KeyDown
    end
    object txtTax: TAdvEdit
      Left = 512
      Top = 274
      Width = 150
      Height = 24
      TabStop = False
      OnValueValidate = txtSubtotalValueValidate
      AutoFocus = False
      EditAlign = eaRight
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = False
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akRight, akBottom]
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HintShowLargeText = False
      ParentFont = False
      OleDropTarget = False
      OleDropSource = False
      ReadOnly = True
      Signed = False
      TabOrder = 5
      Transparent = False
      Visible = True
      OnEnter = txtSpecEnter
      OnKeyDown = txtTaxKeyDown
    end
    object txtTotal: TAdvEdit
      Left = 95
      Top = 229
      Width = 218
      Height = 40
      TabStop = False
      OnValueValidate = txtSubtotalValueValidate
      AutoFocus = False
      EditAlign = eaRight
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Grand Total :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akRight, akBottom]
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HintShowLargeText = False
      ParentFont = False
      OleDropTarget = False
      OleDropSource = False
      ReadOnly = True
      Signed = False
      TabOrder = 3
      Transparent = False
      Visible = True
      OnEnter = txtSpecEnter
      OnKeyDown = txtDisc1KeyDown
    end
    object chkPpn: TCheckBox
      Left = 437
      Top = 276
      Width = 72
      Height = 17
      Anchors = [akRight, akBottom]
      Caption = 'PPN 10% :'
      TabOrder = 4
      OnClick = chkPpnClick
    end
    object txtTunai: TAdvEdit
      Left = 94
      Top = 278
      Width = 219
      Height = 40
      OnValueValidate = txtSubtotalValueValidate
      AutoFocus = False
      EditAlign = eaRight
      EditType = etString
      ErrorColor = clRed
      ErrorFontColor = clWhite
      ExcelStyleDecimalSeparator = False
      Flat = False
      FlatLineColor = clBlack
      FlatParentColor = True
      FocusAlign = eaDefault
      FocusBorder = False
      FocusColor = clWindow
      FocusFontColor = clWindowText
      FocusLabel = False
      FocusWidthInc = 0
      ModifiedColor = clHighlight
      DisabledColor = clSilver
      URLColor = clBlue
      ReturnIsTab = True
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Bayar :'
      LabelPosition = lpLeftTop
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = True
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -13
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Anchors = [akRight, akBottom]
      Color = clWindow
      Enabled = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      HintShowLargeText = False
      ParentFont = False
      OleDropTarget = False
      OleDropSource = False
      Signed = False
      TabOrder = 6
      Transparent = False
      Visible = True
      OnEnter = txtSpecEnter
      OnKeyDown = txtDisc1KeyDown
    end
    object Button1: TButton
      Left = 360
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 7
      Visible = False
      OnClick = Button1Click
    end
  end
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 668
    Height = 40
    ButtonHeight = 36
    ButtonWidth = 76
    Caption = 'ToolBar1'
    Customizable = True
    EdgeBorders = [ebBottom]
    Flat = True
    Images = frmMainMenu.SmallImageList
    ParentShowHint = False
    PopupMenu = frmMainMenu.MenuShortCut
    ShowCaptions = True
    ShowHint = True
    TabOrder = 2
    Transparent = True
    object tbtNew: TToolButton
      Tag = -10
      Left = 0
      Top = 0
      Hint = 'New Data [Ctrl+N]'
      Caption = 'New'
      ImageIndex = 0
      OnClick = tbtNewClick
    end
    object tbtSave: TToolButton
      Tag = -11
      Left = 76
      Top = 0
      Hint = 'Save Data [Ctrl+S]'
      Caption = 'Save'
      ImageIndex = 1
      OnClick = tbtSaveClick
    end
    object tbtPost: TToolButton
      Tag = -21
      Left = 152
      Top = 0
      Hint = 'Posting (Ctrl+T)'
      Caption = 'Posting'
      ImageIndex = 16
      OnClick = tbtPostClick
    end
    object ToolButton5: TToolButton
      Left = 228
      Top = 0
      Width = 6
      Caption = 'ToolButton5'
      Style = tbsDivider
    end
    object btnSaveHolded: TToolButton
      Left = 234
      Top = 0
      Caption = 'Pending'
      ImageIndex = 4
      Visible = False
      OnClick = btnSaveHoldedClick
    end
    object tbtDelete: TToolButton
      Tag = -12
      Left = 310
      Top = 0
      Caption = 'Delete'
      ImageIndex = 2
      OnClick = tbtDeleteClick
    end
    object ToolButton2: TToolButton
      Left = 386
      Top = 0
      Width = 6
      Caption = 'ToolButton2'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object btnLoadHolded: TToolButton
      Left = 392
      Top = 0
      Caption = 'Cari Pending...'
      ImageIndex = 5
      Visible = False
      OnClick = btnLoadHoldedClick
    end
    object tbtPrintUlang: TToolButton
      Left = 468
      Top = 0
      Caption = 'Print Ulang'
      ImageIndex = 3
      OnClick = tbtPrintUlangClick
    end
  end
  object RAWPrinter1: TRAWPrinter
    Left = 24
    Top = 40
  end
end

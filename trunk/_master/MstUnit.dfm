object frmMstUnit: TfrmMstUnit
  Left = 133
  Top = 115
  Width = 603
  Height = 401
  Caption = 'frmMstUnit'
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
  object ToolBar1: TToolBar
    Left = 0
    Top = 0
    Width = 595
    Height = 40
    ButtonHeight = 36
    ButtonWidth = 44
    Caption = 'ToolBar1'
    Customizable = True
    EdgeBorders = [ebBottom]
    Flat = True
    Images = frmMainMenu.SmallImageList
    ParentShowHint = False
    PopupMenu = frmMainMenu.MenuShortCut
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
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
      Left = 44
      Top = 0
      Hint = 'Save Data [Ctrl+S]'
      Caption = 'Save'
      ImageIndex = 1
      OnClick = tbtSaveClick
    end
    object tbtDelete: TToolButton
      Tag = 12
      Left = 88
      Top = 0
      Hint = 'Hapus [Ctrl+D]'
      Caption = '&Delete'
      Enabled = False
      ImageIndex = 2
      OnClick = tbtDeleteClick
    end
    object ToolButton5: TToolButton
      Left = 132
      Top = 0
      Width = 6
      Caption = 'ToolButton5'
      Style = tbsDivider
    end
    object tbtRefresh: TToolButton
      Tag = -19
      Left = 138
      Top = 0
      Hint = 'Refresh [Ctrl+R]'
      Caption = 'Refresh'
      ImageIndex = 6
      OnClick = tbtRefreshClick
    end
  end
  object suiPanel2: TsuiPanel
    Left = 0
    Top = 111
    Width = 595
    Height = 256
    UIStyle = DeepBlue
    BorderColor = clBlack
    Caption = 'Unit List '
    ShowButton = False
    CaptionFontColor = clWhite
    Align = alClient
    TabOrder = 1
    Color = clWhite
    object asgMaster: TAdvStringGrid
      Left = 4
      Top = 24
      Width = 587
      Height = 228
      Cursor = crDefault
      Align = alClient
      ColCount = 5
      DefaultRowHeight = 21
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
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected, goColSizing, goRowSelect]
      ParentFont = False
      PopupMenu = frmMainMenu.MenuShortCut
      TabOrder = 0
      GridLineColor = clSilver
      ActiveCellShow = False
      ActiveCellFont.Charset = DEFAULT_CHARSET
      ActiveCellFont.Color = clWindowText
      ActiveCellFont.Height = -11
      ActiveCellFont.Name = 'MS Sans Serif'
      ActiveCellFont.Style = [fsBold]
      ActiveCellColor = clGray
      Bands.PrimaryColor = clInfoBk
      Bands.PrimaryLength = 1
      Bands.SecondaryColor = clWindow
      Bands.SecondaryLength = 1
      Bands.Print = False
      AutoNumAlign = False
      AutoSize = False
      VAlignment = vtaTop
      EnhTextSize = False
      EnhRowColMove = False
      SizeWithForm = False
      Multilinecells = False
      OnGetAlignment = asgMasterGetAlignment
      OnClickCell = asgMasterClickCell
      DragDropSettings.OleAcceptFiles = True
      DragDropSettings.OleAcceptText = True
      SortSettings.AutoColumnMerge = False
      SortSettings.Column = 1
      SortSettings.Show = False
      SortSettings.IndexShow = False
      SortSettings.Full = True
      SortSettings.SingleColumn = False
      SortSettings.IgnoreBlanks = True
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
      Flat = False
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
      Navigation.AdvanceDirection = adLeftRight
      Navigation.AllowClipboardRowGrow = True
      Navigation.AllowClipboardColGrow = True
      Navigation.InsertPosition = pInsertBefore
      Navigation.CopyHTMLTagsToClipboard = True
      Navigation.HomeEndKey = heFirstLastColumn
      ColumnSize.Location = clRegistry
      CellNode.Color = clSilver
      CellNode.NodeColor = clBlack
      CellNode.ShowTree = False
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
      FixedRowHeight = 21
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FixedAsButtons = False
      FloatFormat = '%.2f'
      IntegralHeight = False
      WordWrap = False
      ColumnHeaders.Strings = (
        ''
        'Kode'
        'Nama')
      LookupItems.Strings = (
        '')
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
        64
        64
        64)
    end
  end
  object suiPanel1: TsuiPanel
    Left = 0
    Top = 40
    Width = 595
    Height = 71
    UIStyle = DeepBlue
    BorderColor = clBlack
    Caption = 'Input/Edit'
    ShowButton = False
    CaptionFontColor = clWhite
    Align = alTop
    TabOrder = 2
    Color = clWhite
    PopupMenu = frmMainMenu.MenuShortCut
    DesignSize = (
      595
      71)
    object txtName: TAdvEdit
      Left = 54
      Top = 41
      Width = 534
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
      ReturnIsTab = False
      LengthLimit = 0
      TabOnFullLength = False
      Precision = 0
      LabelCaption = 'Nama:'
      LabelPosition = lpTopLeft
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = False
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
      TabOrder = 1
      Transparent = False
      Visible = True
      OnChange = txtAliasChange
    end
    object txtAlias: TAdvEdit
      Left = 6
      Top = 41
      Width = 44
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
      LabelCaption = 'Kode : '
      LabelPosition = lpTopLeft
      LabelMargin = 4
      LabelTransparent = False
      LabelAlwaysEnabled = False
      LabelFont.Charset = ANSI_CHARSET
      LabelFont.Color = clWindowText
      LabelFont.Height = -11
      LabelFont.Name = 'Tahoma'
      LabelFont.Style = []
      Persistence.Enable = False
      Persistence.Location = plInifile
      Color = clWindow
      Enabled = True
      HintShowLargeText = False
      OleDropTarget = False
      OleDropSource = False
      Signed = False
      TabOrder = 0
      Transparent = False
      Visible = True
      OnChange = txtAliasChange
    end
  end
  object WinXP1: TWinXP
    Left = 552
    Top = 16
  end
end
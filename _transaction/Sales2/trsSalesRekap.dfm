object frmTrsSalesRekap: TfrmTrsSalesRekap
  Left = 74
  Top = 186
  BorderStyle = bsDialog
  Caption = 'frmTrsSalesRekap'
  ClientHeight = 408
  ClientWidth = 688
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object MainPanel: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 408
    Align = alClient
    BevelOuter = bvNone
    PopupMenu = frmMainMenu.MenuShortCut
    TabOrder = 0
    object ToolBar1: TToolBar
      Left = 0
      Top = 0
      Width = 688
      Height = 41
      ButtonHeight = 36
      ButtonWidth = 60
      Caption = 'ToolBar1'
      EdgeBorders = [ebBottom]
      Flat = True
      Images = frmMainMenu.SmallImageList
      ParentShowHint = False
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
        DropdownMenu = PopupMenu1
        ImageIndex = 0
        OnClick = tbtNewClick
      end
      object tbtDetail: TToolButton
        Tag = -18
        Left = 60
        Top = 0
        Hint = 'Detai [Ctrl+T]'
        Caption = 'Detail'
        ImageIndex = 1
        OnClick = tbtDetailClick
      end
      object ToolButton6: TToolButton
        Left = 120
        Top = 0
        Width = 8
        Caption = 'ToolButton6'
        ImageIndex = 11
        Style = tbsSeparator
      end
      object tbtDelete: TToolButton
        Left = 128
        Top = 0
        Caption = 'Delete'
        ImageIndex = 2
        OnClick = tbtDeleteClick
      end
      object tblEdit: TToolButton
        Left = 188
        Top = 0
        Caption = 'Edit'
        ImageIndex = 5
        OnClick = tblEditClick
      end
      object ToolButton1: TToolButton
        Left = 248
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object tbtRefresh: TToolButton
        Tag = -19
        Left = 256
        Top = 0
        Hint = 'Refresh [Ctrl+L]'
        Caption = 'Load Data'
        ImageIndex = 6
        OnClick = tbtRefreshClick
      end
      object ToolButton5: TToolButton
        Tag = -20
        Left = 316
        Top = 0
        Caption = 'Reset Filter'
        ImageIndex = 3
        OnClick = ToolButton5Click
      end
      object ToolButton2: TToolButton
        Left = 376
        Top = 0
        Width = 9
        Caption = 'ToolButton2'
        ImageIndex = 12
        Style = tbsSeparator
      end
      object ToolButton3: TToolButton
        Tag = -16
        Left = 385
        Top = 0
        Caption = 'Find'
        ImageIndex = 12
        OnClick = ToolButton3Click
      end
      object tbtPrint: TToolButton
        Tag = -14
        Left = 445
        Top = 0
        Hint = 'Print Data [Ctrl+P]'
        Caption = 'Print'
        ImageIndex = 10
        OnClick = tbtPrintClick
      end
    end
    object asgList: TAdvStringGrid
      Left = 0
      Top = 146
      Width = 688
      Height = 262
      Cursor = crDefault
      Align = alClient
      ColCount = 13
      Ctl3D = False
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
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goDrawFocusSelected]
      ParentCtl3D = False
      ParentFont = False
      TabOrder = 1
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
      OnGetAlignment = asgListGetAlignment
      OnDblClickCell = asgListDblClickCell
      DragDropSettings.OleAcceptFiles = True
      DragDropSettings.OleAcceptText = True
      SortSettings.AutoColumnMerge = False
      SortSettings.Column = 1
      SortSettings.Show = True
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
      FloatingFooter.Visible = True
      ControlLook.Color = clBlack
      ControlLook.CheckSize = 15
      ControlLook.RadioSize = 10
      ControlLook.ControlStyle = csClassic
      ControlLook.FlatButton = False
      EnableBlink = False
      EnableHTML = True
      EnableWheel = True
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
      Navigation.AdvanceDirection = adLeftRight
      Navigation.AllowClipboardRowGrow = True
      Navigation.AllowClipboardColGrow = True
      Navigation.InsertPosition = pInsertBefore
      Navigation.CopyHTMLTagsToClipboard = True
      Navigation.HomeEndKey = heFirstLastColumn
      ColumnSize.Stretch = True
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
      FixedFooters = 1
      FixedRightCols = 0
      FixedColWidth = 64
      FixedRowHeight = 21
      FixedFont.Charset = DEFAULT_CHARSET
      FixedFont.Color = clWindowText
      FixedFont.Height = -11
      FixedFont.Name = 'Tahoma'
      FixedFont.Style = []
      FixedAsButtons = False
      FloatFormat = '%.2n'
      IntegralHeight = False
      WordWrap = False
      ColumnHeaders.Strings = (
        'No'
        'Tgl'
        'No Transaksi'
        'Relasi'
        'Subtotal'
        'Discount'
        'Total'
        'Bayar'
        'Sisa'
        'Kurs'
        'Keterangan')
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
        64
        54
        45
        51
        47
        41
        64
        36
        27)
    end
    object suiPanel1: TsuiPanel
      Left = 0
      Top = 41
      Width = 688
      Height = 105
      UIStyle = DeepBlue
      BorderColor = clBlack
      Caption = 'Filter'
      ShowButton = True
      CaptionFontColor = clWhite
      Align = alTop
      TabOrder = 2
      Color = clWhite
      object suiPanel2: TsuiPanel
        Left = 6
        Top = 24
        Width = 145
        Height = 75
        UIStyle = DeepBlue
        BorderColor = clBlack
        Caption = 'Periode'
        ShowButton = False
        CaptionFontColor = clWhite
        TabOrder = 0
        Color = clWhite
        object Label3: TLabel
          Left = 7
          Top = 48
          Width = 41
          Height = 13
          Caption = 'Sampai :'
        end
        object cmbOpr: TComboBox
          Left = 6
          Top = 24
          Width = 43
          Height = 21
          ItemHeight = 13
          ItemIndex = 3
          TabOrder = 0
          Text = 'Dari'
          OnChange = cmbOprChange
          Items.Strings = (
            ' ='
            ' >='
            ' <='
            'Dari')
        end
        object dtpAwal: TDateTimePicker
          Left = 52
          Top = 24
          Width = 85
          Height = 21
          CalAlignment = dtaLeft
          Date = 39083.7426506366
          Time = 39083.7426506366
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 1
        end
        object dtpAkhir: TDateTimePicker
          Left = 52
          Top = 48
          Width = 85
          Height = 21
          CalAlignment = dtaLeft
          Date = 39083.7426842477
          Time = 39083.7426842477
          DateFormat = dfShort
          DateMode = dmComboBox
          Kind = dtkDate
          ParseInput = False
          TabOrder = 2
        end
      end
      object suiPanel3: TsuiPanel
        Left = 155
        Top = 24
        Width = 230
        Height = 75
        UIStyle = DeepBlue
        BorderColor = clBlack
        Caption = 'Jenis/Status'
        ShowButton = False
        CaptionFontColor = clWhite
        TabOrder = 1
        Color = clWhite
        object Label4: TLabel
          Left = 7
          Top = 24
          Width = 63
          Height = 13
          Caption = 'Jenis Trans : '
        end
        object Label1: TLabel
          Left = 7
          Top = 48
          Width = 39
          Height = 13
          Caption = 'Status : '
        end
        object cmbJenis: TComboBox
          Left = 73
          Top = 24
          Width = 150
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'Semua'
            'Cash'
            'Credit'
            'Retur')
        end
        object cmbStatus: TComboBox
          Left = 73
          Top = 47
          Width = 150
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 1
          OnChange = cmbStatusChange
          Items.Strings = (
            'Semua'
            'Lunas'
            'Belum Lunas')
        end
      end
      object suiPanel4: TsuiPanel
        Left = 389
        Top = 24
        Width = 230
        Height = 75
        UIStyle = DeepBlue
        BorderColor = clBlack
        Caption = 'Vendor/Partner'
        ShowButton = False
        CaptionFontColor = clWhite
        TabOrder = 2
        Color = clWhite
        object Label5: TLabel
          Left = 7
          Top = 24
          Width = 37
          Height = 13
          Caption = 'Nama : '
        end
        object cmbRelasi: TComboBox
          Left = 48
          Top = 24
          Width = 174
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          OnChange = cmbRelasiChange
        end
      end
      object pnlTipe: TsuiPanel
        Left = 622
        Top = 24
        Width = 164
        Height = 75
        UIStyle = DeepBlue
        BorderColor = clBlack
        Caption = 'Tipe Laporan'
        ShowButton = False
        CaptionFontColor = clWhite
        TabOrder = 3
        Color = clWhite
        object cmbTipe: TComboBox
          Left = 8
          Top = 24
          Width = 152
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 0
          Text = 'Rekap Transaksi'
          OnSelect = cmbTipeSelect
          Items.Strings = (
            'Rekap Transaksi'
            'Per Barang')
        end
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 656
    Top = 64
    object PenjualanCash1: TMenuItem
      Caption = 'Penjualan Cash'
      OnClick = PenjualanCash1Click
    end
    object PenjualanCredit1: TMenuItem
      Caption = 'Penjualan Credit'
      OnClick = PenjualanCredit1Click
    end
    object ReturPenjualan1: TMenuItem
      Caption = 'Retur Penjualan'
      OnClick = ReturPenjualan1Click
    end
  end
end

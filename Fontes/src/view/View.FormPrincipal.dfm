object FormConsultaCep: TFormConsultaCep
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Consulta Cep'
  ClientHeight = 309
  ClientWidth = 645
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object pCentral: TPanel
    Left = 0
    Top = 0
    Width = 645
    Height = 309
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object lbFonteConsulta: TLabel
      Left = 133
      Top = 5
      Width = 86
      Height = 13
      Caption = 'Fonte P/ Consulta'
    end
    object lbCep: TLabel
      Left = 8
      Top = 5
      Width = 19
      Height = 13
      Caption = 'Cep'
    end
    object Grid: TDBGrid
      Left = 0
      Top = 47
      Width = 645
      Height = 262
      Align = alBottom
      BorderStyle = bsNone
      DataSource = dsConsulta
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object edtCep: TEdit
      Left = 8
      Top = 22
      Width = 121
      Height = 21
      MaxLength = 9
      NumbersOnly = True
      TabOrder = 1
      OnKeyPress = edtCepKeyPress
    end
    object cbFonteConsulta: TComboBox
      Left = 133
      Top = 22
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'N'#227'o Se Aplica'
      OnChange = cbFonteConsultaChange
      Items.Strings = (
        'N'#227'o Se Aplica'
        'API Via Cep'
        'API Cep'
        'API Awesome')
    end
  end
  object dsConsulta: TDataSource
    AutoEdit = False
    Left = 456
    Top = 8
  end
end

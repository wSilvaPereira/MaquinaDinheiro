object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'M'#225'quina de dinheiro'
  ClientHeight = 286
  ClientWidth = 295
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
  object btnGetTroco: TButton
    AlignWithMargins = True
    Left = 6
    Top = 3
    Width = 283
    Height = 25
    Align = alTop
    Caption = 'Get Troco'
    TabOrder = 0
    OnClick = btnGetTrocoClick
  end
  object edtTroco: TEdit
    AlignWithMargins = True
    Left = 6
    Top = 34
    Width = 283
    Height = 21
    Align = alTop
    Alignment = taCenter
    TabOrder = 1
    Text = '956,94'
  end
  object memTroco: TMemo
    AlignWithMargins = True
    Left = 3
    Top = 58
    Width = 289
    Height = 225
    TabOrder = 2
  end
end

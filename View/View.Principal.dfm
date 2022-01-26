object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  AutoSize = True
  BorderStyle = bsDialog
  BorderWidth = 5
  Caption = 'M'#225'quina de dinheiro'
  ClientHeight = 283
  ClientWidth = 289
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
    Left = 107
    Top = 0
    Width = 75
    Height = 25
    Caption = 'Get Troco'
    TabOrder = 0
    OnClick = btnGetTrocoClick
  end
  object edtTroco: TEdit
    Left = 84
    Top = 31
    Width = 121
    Height = 21
    Alignment = taCenter
    TabOrder = 1
    Text = '956,94'
  end
  object memTroco: TMemo
    Left = 0
    Top = 58
    Width = 289
    Height = 225
    TabOrder = 2
  end
end

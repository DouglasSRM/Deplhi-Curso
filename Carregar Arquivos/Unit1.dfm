object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 676
  ClientWidth = 1194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object Image1: TImage
    Left = 24
    Top = 24
    Width = 577
    Height = 497
  end
  object Memo1: TMemo
    Left = 616
    Top = 24
    Width = 553
    Height = 497
    TabOrder = 0
  end
  object btn_img: TButton
    Left = 128
    Top = 552
    Width = 353
    Height = 65
    Caption = 'Carregar Imagem'
    TabOrder = 1
    OnClick = btn_imgClick
  end
  object btn_text: TButton
    Left = 632
    Top = 552
    Width = 249
    Height = 65
    Caption = 'Carregar Texto'
    TabOrder = 2
    OnClick = btn_textClick
  end
  object btn_salvar: TButton
    Left = 904
    Top = 552
    Width = 249
    Height = 65
    Caption = 'Salvar Texto'
    TabOrder = 3
    OnClick = btn_salvarClick
  end
  object dg_text: TOpenTextFileDialog
    Filter = '.txt|*.txt'
    Left = 1120
    Top = 624
  end
  object dg_img: TOpenPictureDialog
    Left = 48
    Top = 568
  end
  object dg_save: TSaveDialog
    Filter = 'txt (*.txt)|*.txt|docx (*docx)|*.docx'
    Left = 1048
    Top = 624
  end
end

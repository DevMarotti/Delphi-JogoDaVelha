unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TMatrizTabuleiro = Array[1..3] Of   Array[1..3] Of   Char;

  TfrmPrincipal = class(TForm)
    Panel1: TPanel;
    pbtn_1_1: TPanel;
    sbtn_1_1: TSpeedButton;
    pbtn_1_2: TPanel;
    sbtn_1_2: TSpeedButton;
    pbtn_1_3: TPanel;
    sbtn_1_3: TSpeedButton;
    pbtn_2_2: TPanel;
    sbtn_2_2: TSpeedButton;
    pbtn_2_3: TPanel;
    sbtn_2_3: TSpeedButton;
    pbtn_3_1: TPanel;
    sbtn_3_1: TSpeedButton;
    pbtn_3_2: TPanel;
    sbtn_3_2: TSpeedButton;
    pbtn_3_3: TPanel;
    sbtn_3_3: TSpeedButton;
    pbtn_2_1: TPanel;
    sbtn_2_1: TSpeedButton;
    pNovoJogo: TPanel;
    sbtnNovoJogo: TSpeedButton;
    procedure FormActivate(Sender: TObject);
    procedure sbtn_1_1Click(Sender: TObject);
    procedure sbtn_1_2Click(Sender: TObject);
    procedure sbtn_1_3Click(Sender: TObject);
    procedure sbtn_2_1Click(Sender: TObject);
    procedure sbtn_2_2Click(Sender: TObject);
    procedure sbtn_2_3Click(Sender: TObject);
    procedure sbtn_3_1Click(Sender: TObject);
    procedure sbtn_3_2Click(Sender: TObject);
    procedure sbtn_3_3Click(Sender: TObject);
    procedure sbtnNovoJogoClick(Sender: TObject);
  private
    procedure realizaJogada(L, C : Integer; var escolha: Char; var Sender: TObject);
    procedure alternarEscolha(var escolha: Char);
    procedure verificaVitoria(var tabuleiro : TMatrizTabuleiro);
    procedure DesabilitaBotoes;
    procedure HabilitaBotoes;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

const VALOR_O = 'O';
const VALOR_X = 'X';

var
  tabuleiro : TMatrizTabuleiro;
  escolha   : Char;

// --------------------------------------------------------- Form
procedure TfrmPrincipal.FormActivate(Sender: TObject);
begin
  escolha := VALOR_X;
  DesabilitaBotoes;
end;

// --------------------------------------------------------- Bot?es
procedure TfrmPrincipal.sbtnNovoJogoClick(Sender: TObject);
var
  I: Integer;
  J: Integer;
begin
  // apaga os caption dos bot?es do tabuleiro
  for I := 0 to ComponentCount -1 do
    if (Components[I].Tag = 10 ) then
      (Components[I] as TSpeedButton).Caption := ' ';

  // inicializa matriz do tabuleiro
  for I := 1 to 3 do
    for J := 1 to 3 do
      tabuleiro[I][J] := ' ';

  HabilitaBotoes;
end;

procedure TfrmPrincipal.sbtn_1_1Click(Sender: TObject);
begin
  // posi??o : 1 x 1
  realizaJogada(1,1, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_1_2Click(Sender: TObject);
begin
   // posi??o : 1 x 2
  realizaJogada(1,2, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_1_3Click(Sender: TObject);
begin
  // posi??o : 1 x 3
  realizaJogada(1,3, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_2_1Click(Sender: TObject);
begin
  // posi??o : 2 x 1
  realizaJogada(2,1, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_2_2Click(Sender: TObject);
begin
  // posi??o : 2 x 2
  realizaJogada(2,2, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_2_3Click(Sender: TObject);
begin
  // posi??o : 2 x 3
  realizaJogada(2,3, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_3_1Click(Sender: TObject);
begin
  // posi??o : 3 x 1
  realizaJogada(3,1, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

procedure TfrmPrincipal.sbtn_3_2Click(Sender: TObject);
begin
  // posi??o : 3 x 2
  realizaJogada(3,2, escolha, Sender);
  verificaVitoria(tabuleiro);
  end;

procedure TfrmPrincipal.sbtn_3_3Click(Sender: TObject);
begin
  // posi??o : 3 x 3
  realizaJogada(3,3, escolha, Sender);
  verificaVitoria(tabuleiro);
end;

// ---------------------------------------------------------------- A??es
procedure TfrmPrincipal.realizaJogada(L, C: Integer; var escolha: Char; var Sender: TObject);
begin
  tabuleiro[L][C]              := escolha;
  TSpeedButton(Sender).Caption := escolha;
  alternarEscolha(escolha);
end;

procedure TfrmPrincipal.alternarEscolha(var escolha : Char);
begin
  if (escolha = VALOR_X) then
    escolha := VALOR_O
  else
    escolha := VALOR_X;
end;


procedure TfrmPrincipal.verificaVitoria(var tabuleiro: TMatrizTabuleiro);
var
  linha, coluna, velha: Integer;
  I, J, K : Integer;
begin

    // Verifica as linha para valores de:  X ou O
    for linha := 1 to 3 do
      if (tabuleiro[linha][1] = VALOR_X ) AND
         (tabuleiro[linha][2] = VALOR_X ) AND
         (tabuleiro[linha][3] = VALOR_X )
      then
      begin
         // Atribui Verde a linha ganhadora
         if linha = 1 then
           for I := 0 to ComponentCount -1 do
             if (Components[I].Tag in [ 1..3 ] ) then
               (Components[I] as TPanel).Color := clGreen;

         if linha = 2 then
           for J := 0 to ComponentCount -1 do
             if (Components[J].Tag in [ 4..6 ] ) then
               (Components[J] as TPanel).Color := clGreen;

          if linha = 3 then
            for K := 0 to ComponentCount -1 do
              if (Components[K].Tag in [ 7..9 ] ) then
                (Components[k] as TPanel).Color := clGreen;

        Application.MessageBox('Jogador: ''X'' Ganhou em linha', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
        DesabilitaBotoes;
        exit;
      end
      else if  (tabuleiro[linha][1] = VALOR_O ) AND
               (tabuleiro[linha][2] = VALOR_O ) AND
               (tabuleiro[linha][3] = VALOR_O )
           then
           begin
              // Atribui Verde a linha ganhadora
              if linha = 1 then
                for I := 0 to ComponentCount -1 do
                  if (Components[I].Tag in [ 1..3 ] ) then
                    (Components[I] as TPanel).Color := clGreen;

              if linha = 2 then
                for J := 0 to ComponentCount -1 do
                   if (Components[J].Tag in [ 4..6 ] ) then
                     (Components[J] as TPanel).Color := clGreen;

              if linha = 3 then
                for K := 0 to ComponentCount -1 do
                  if (Components[K].Tag in [ 7..9 ] ) then
                    (Components[k] as TPanel).Color := clGreen;

              Application.MessageBox('Jogador: ''O'' Ganhou em linha', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
              DesabilitaBotoes;
              exit;
           end;

    // Verifica as colunas para valores de:  X ou O
    for coluna := 1 to 3 do
      if (tabuleiro[1][coluna] = VALOR_X ) AND
         (tabuleiro[2][coluna] = VALOR_X ) AND
         (tabuleiro[3][coluna] = VALOR_X )
      then
      begin
        // Atribui Verde a linha ganhadora
        if coluna = 1 then
          for I := 0 to ComponentCount -1 do
            if (Components[I].Tag in [ 1,4,7 ] ) then
              (Components[I] as TPanel).Color := clGreen;

            if coluna = 2 then
              for J := 0 to ComponentCount -1 do
                if (Components[J].Tag in [ 2,5,8 ] ) then
                  (Components[J] as TPanel).Color := clGreen;

           if coluna = 3 then
             for K := 0 to ComponentCount -1 do
               if (Components[K].Tag in [ 3,6,9 ] ) then
                 (Components[k] as TPanel).Color := clGreen;

        Application.MessageBox('Jogador: ''X'' Ganhou em Coluna', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
        DesabilitaBotoes;
        exit;
      end
      else if  (tabuleiro[1][coluna] = VALOR_O ) AND
               (tabuleiro[2][coluna] = VALOR_O ) AND
               (tabuleiro[3][coluna] = VALOR_O )
           then
           begin
              // Atribui Verde a linha ganhadora
              if coluna = 1 then
                for I := 0 to ComponentCount -1 do
                  if (Components[I].Tag in [ 1,4,7 ] ) then
                    (Components[I] as TPanel).Color := clGreen;

              if coluna = 2 then
                for J := 0 to ComponentCount -1 do
                   if (Components[J].Tag in [ 2,5,8 ] ) then
                     (Components[J] as TPanel).Color := clGreen;

              if coluna = 3 then
                for K := 0 to ComponentCount -1 do
                  if (Components[K].Tag in [ 3,6,9 ] ) then
                    (Components[k] as TPanel).Color := clGreen;

              Application.MessageBox('Jogador: ''O'' Ganhou em Coluna', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
              DesabilitaBotoes;
              exit;
           end;

    // Verifica a diagonal principal
    if  (tabuleiro[1][1] = VALOR_X ) AND
        (tabuleiro[2][2] = VALOR_X ) AND
        (tabuleiro[3][3] = VALOR_X )
    then
    begin
       for I := 0 to ComponentCount -1 do
         if (Components[I].Tag in [ 1,5,9 ] ) then
           (Components[I] as TPanel).Color := clGreen;

       Application.MessageBox('Jogador: ''X'' Ganhou em Diagonal Principal', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
       DesabilitaBotoes;
       exit;
    end
    else if  (tabuleiro[1][1] = VALOR_O ) AND
             (tabuleiro[2][2] = VALOR_O ) AND
             (tabuleiro[3][3] = VALOR_O )
         then
         begin
           for I := 0 to ComponentCount -1 do
             if (Components[I].Tag in [ 1,5,9 ] ) then
               (Components[I] as TPanel).Color := clGreen;

             Application.MessageBox('Jogador: ''O'' Ganhou em Diagonal Principal', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
             DesabilitaBotoes;
             exit;
          end;

   // Verifica a diagonal secund?ria
   if  (tabuleiro[1][3] = VALOR_X ) AND
       (tabuleiro[2][2] = VALOR_X ) AND
       (tabuleiro[3][1] = VALOR_X )
   then
   begin
       for I := 0 to ComponentCount -1 do
         if (Components[I].Tag in [ 3,5,7 ] ) then
           (Components[I] as TPanel).Color := clGreen;

       Application.MessageBox('Jogador: ''X'' Ganhou em Diagonal Secund?ria', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
       DesabilitaBotoes;
       exit;
   end
   else if  (tabuleiro[1][3] = VALOR_O ) AND
            (tabuleiro[2][2] = VALOR_O ) AND
            (tabuleiro[3][1] = VALOR_O )
        then
        begin
            for I := 0 to ComponentCount -1 do
              if (Components[I].Tag in [ 3,5,7 ] ) then
                (Components[I] as TPanel).Color := clGreen;

            Application.MessageBox('Jogador: ''O'' Ganhou em Diagonal Secund?ria', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
            DesabilitaBotoes;
            exit;
        end;

   // Caso ninguem ganhe
   velha := 0;
   for I := 1 to 3 do
     for J := 1 to 3 do
       if (tabuleiro[I][J] <> ' ') then
         INC(velha);
   if velha = 9 then
   begin
      Application.MessageBox('Deu Velha: Ninguem ganhou', 'Resultado do jogo', MB_ICONINFORMATION+MB_OK);
      DesabilitaBotoes;
      exit;
   end;
end;

procedure TfrmPrincipal.DesabilitaBotoes;
var
 I : integer;
begin
    // para TSpeedButton
    for I := 0 to ComponentCount -1 do
      if (Components[I].Tag = 10 ) then
        (Components[I] as TSpeedButton).Enabled := False;

    // para TPanel
    for I := 0 to ComponentCount -1 do
      if (Components[I].Tag in [1..9] ) then
        (Components[I] as TPanel).Color := clSilver;
end;

procedure TfrmPrincipal.HabilitaBotoes;
var
 I : integer;
begin
    // para TSpeedButton
    for I := 0 to ComponentCount -1 do
      if (Components[I].Tag = 10 ) then
        (Components[I] as TSpeedButton).Enabled := True;

    // para TPanel
    for I := 0 to ComponentCount -1 do
      if (Components[I].Tag in [1..9] ) then
        (Components[I] as TPanel).Color := clTeal;
end;

end.

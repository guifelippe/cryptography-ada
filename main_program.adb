with Ada.Text_IO;
with User;
with Crypto;

procedure Main_Program is
   Nome_Usuario : String(1 .. 50);
   Senha : String(1 .. 50);
   Senha_Criptografada : String(1 .. 50);

begin
   Ada.Text_IO.Put_Line("Bem-vindo ao Sistema de Criptografia de Usuários");

   Ada.Text_IO.Put("Digite o nome de usuário: ");
   Ada.Text_IO.Get_Line(Nome_Usuario);
   
   Ada.Text_IO.Put("Digite a senha: ");
   Ada.Text_IO.Get_Line(Senha);
   
   -- Chama a função de criptografia do módulo de criptografia
   Senha_Criptografada := Crypto.Criptografar(Senha);

   Ada.Text_IO.Put("Nome de usuário: ");
   Ada.Text_IO.Put_Line(Nome_Usuario);
   Ada.Text_IO.Put("Senha criptografada: ");
   Ada.Text_IO.Put_Line(Senha_Criptografada);
   
   -- Cria um novo usuário usando o módulo de gerenciamento de usuário
   User.Criar_Usuario(Nome_Usuario, Senha_Criptografada);
   
   Ada.Text_IO.Put_Line("Usuário criado com sucesso!");
end Main_Program;
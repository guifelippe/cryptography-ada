package Usuario is
   type Usuario_Registro is record
      Nome : String(1 .. 50);
      Senha : String(1 .. 50);
   end record;

   procedure Criar_Usuario(Nome : in String; Senha : in String);
end Usuario;

package body Usuario is
   Usuarios : array(1 .. 100) of Usuario_Registro;
   Ultimo_Indice : Natural := 0;

   procedure Criar_Usuario(Nome : in String; Senha : in String) is
   begin
      if Ultimo_Indice < 100 then
         Ultimo_Indice := Ultimo_Indice + 1;
         Usuarios(Ultimo_Indice).Nome := Nome;
         Usuarios(Ultimo_Indice).Senha := Senha;
      else
         Ada.Text_IO.Put_Line("Não é possível criar mais usuários. Limite atingido.");
      end if;
   end Criar_Usuario;
end Usuario;
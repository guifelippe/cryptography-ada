package Crypto is
   function Criptografar(Senha : in String) return String;
end Criptografia;

package body Criptografia is
   Chave : Natural := 3;

   function Criptografar(Senha : in String) return String is
      Criptografada : String(Senha'Range);
   begin
      for I in Senha'Range loop
         if Senha(I) in 'A' .. 'Z' then
            Criptografada(I) := Character'Val((Character'Pos(Senha(I)) - Character'Pos('A') + Chave) mod 26 + Character'Pos('A'));
         elsif Senha(I) in 'a' .. 'z' then
            Criptografada(I) := Character'Val((Character'Pos(Senha(I)) - Character'Pos('a') + Chave) mod 26 + Character'Pos('a'));
         else
            Criptografada(I) := Senha(I);
         end if;
      end loop;
      return Criptografada;
   end Criptografar;
end Crypto;
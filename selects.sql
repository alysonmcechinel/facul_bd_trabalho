/*SELECT POR USUARIOS ATIVOS*/
select *
  from app_usuarios
 where ativo = 'S';
 
 /*Select por jogos sem goleiro*/
 select *
   from app_jogos
 where id_usuario_goleiro is null;
 
 /*SELECT POR JOGOS COM GOLEIROS COM OS NOMES*/
 select app_jogos.id_jogo,
		app_jogos.data,
        app_jogos.horario,
        app_jogos.id_usuario,
        app_usuarios.nome as nome_time,
        app_jogos.id_usuario_goleiro,
        app_goleiros.nome
   from app_jogos join app_usuarios on
		(app_usuarios.id_usuario = app_jogos.id_usuario)
        join app_usuarios app_goleiros on
		(app_goleiros.id_usuario = app_jogos.id_usuario_goleiro)
 where id_usuario_goleiro is not null;
 
 /*SELECT DOS CAMPOS*/
 select fl.id_campo,
		fl.descricao,
        (select flp.nome_pt
		   from app_paises flp
		  where flp.idpais = fl.idpais) as nome_pais
   from app_campos fl;
   
   select * from app_usuarios;
   
   select nome from app_usuarios where idcidade <> 4787;
   
   select * from app_alugueis where nota > 8;
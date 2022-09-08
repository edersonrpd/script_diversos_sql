select 
              c.IdMarca,
              d.Marca,
              'TotalNF' = Round(Sum((b.quantidadeusada * b.ValorUnit�rioUsado) + b.cur_ValorSubstituicaoTributaria),2)
            from 
              mov_estoque a with(nolock)
                inner join
              mov_estoque_detalhes b with(nolock) 
                  on a.IdMovimento = b.IdMovimento
                inner join
              Tab_Estoque c with (nolock)
                  on b.iditem = c.iditem 
                left join
              Tab_Estoque_Marcas d with (nolock)
                  on d.IdMarca = c.IdMarca
            where
              a.classifica��omovimento in (1,8) and
              a.IdCancelamento is null
			  and a.DataEmiss�o >= '2022-01-01' and a.DataEmiss�o <= '2022-06-30'
            group by
            c.IdMarca,
              d.Marca
package br.com.carteiradeinvestimentos.adapters.jdbc

import br.com.carteiradeinvestimentos.adapters.jdbc.TransitionSQLExpressions.slqSelectAll
import br.com.carteiradeinvestimentos.domain.transition.Transition
import br.com.carteiradeinvestimentos.domain.transition.TransitionRepository
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcOperations

//class TransitionJDBCRepository(
   // private val db: NamedParameterJdbcOperations
//): TransitionRepository {
    //override fun findAll(): List<Transition> {
        //db.query(slqSelectAll(), { fn ->  });
    //}
//}
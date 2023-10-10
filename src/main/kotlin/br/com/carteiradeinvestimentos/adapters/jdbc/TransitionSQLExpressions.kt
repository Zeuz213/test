package br.com.carteiradeinvestimentos.adapters.jdbc
object TransitionSQLExpressions {
    fun slqSelectAll() = """SELECT
    id,
    dataDaTransacao,
    valorTotal,
    quantidade,
    Usuario_id,
    Ativo_id
    FROM transacao;
    """.trimIndent()
}
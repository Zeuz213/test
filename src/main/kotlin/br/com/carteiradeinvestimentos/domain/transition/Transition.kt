package br.com.carteiradeinvestimentos.domain.transition

import java.util.Date
import java.util.UUID

data class Transition(
    val id: UUID = UUID.randomUUID(),
    val dataDaTransacao: Date,
    val valorTotal: Double,
    val quantidade: Int,
    val Usuario_id: UUID,
    val Ativo_id: UUID
)

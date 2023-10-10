package br.com.carteiradeinvestimentos.domain.transition

interface TransitionRepository {
    fun findAll(): List<Transition>
    //fun findById(): Transition
    //fun insert(): void
    //fun delete(): void
}
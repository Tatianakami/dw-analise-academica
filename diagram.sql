Table Fato_Professor {
  id_fato int [pk, increment]
  id_professor int [ref: > Dim_Professor.id_professor]
  id_departamento int [ref: > Dim_Departamento.id_departamento]
  id_curso int [ref: > Dim_Curso.id_curso]
  id_disciplina int [ref: > Dim_Disciplina.id_disciplina]
  id_tempo int [ref: > Dim_Tempo.id_tempo]
  carga_horaria int
  quantidade_turmas int
  quantidade_alunos int
}

Table Dim_Professor {
  id_professor int [pk, increment]
  nome_professor varchar
  titulacao varchar
  tempo_de_carreira int
}

Table Dim_Curso {
  id_curso int [pk, increment]
  nome_curso varchar
  modalidade varchar
  nivel varchar
}

Table Dim_Departamento {
  id_departamento int [pk, increment]
  nome_departamento varchar
  area_conhecimento varchar
}

Table Dim_Disciplina {
  id_disciplina int [pk, increment]
  nome_disciplina varchar
  carga_horaria int
}

Table Dim_Tempo {
  id_tempo int [pk, increment]
  data date
  ano int
  semestre int
  trimestre int
  mes int
}

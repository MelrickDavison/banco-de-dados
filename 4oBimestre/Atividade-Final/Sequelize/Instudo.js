const { Sequelize, DataTypes } = require('sequelize');

// Configuração da conexão com o banco de dados
const sequelize = new Sequelize(
    'instudo',
    'root',
    'root',
    {
        host: 'localhost',
        dialect: 'mysql',
    }
);

sequelize.sync().then(function () {
    console.log('DB connection sucessful.');
}, function (err) {
    // catch error here
    console.log(err);
});

const Aluno = sequelize.define('user', {
    login: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        primaryKey: true,
    },

    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },

    senha: {
        type: DataTypes.STRING,

        allowNull: false
    },

    dataNascimento: {
        type: DataTypes.DATE,
        allowNull: false
    },

    foto: {
        type: DataTypes.STRING
    },

    matricula: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true
    },

    pontos: {
        type: DataTypes.INTEGER
    }

})

// sequelize.sync({ force: true }).then(async () => {
//     // Criando um usuário com endereço, projetos e cursos
//     const aluno1 = await Aluno.create({
//         login: 'LLL_Fabricio',
//         nome: 'Fabricio Arcanjo',
//         senha: 'fabricio9',
//         dataNascimento: '2006-09-06',
//         foto: '',
//         matricula: 2022308,
//         pontos: 1011
//     });

//     console.log(JSON.stringify(aluno1, null, 2));

//     // Fechando a conexão com o banco de dados
//     await sequelize.close();
//   });

const Professor = sequelize.define('teacher', {
    login: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },

    senha: {
        type: DataTypes.STRING,
        allowNull: false
    },

    dataNascimento: {
        type: DataTypes.DATE,
        allowNull: false
    },

    foto: {
        type: DataTypes.STRING
    },

    especializacao: {
        type: DataTypes.STRING,
        allowNull: false
    },

    curriculo: {
        type: DataTypes.STRING,
        allowNull: false
    },

    siape: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    }

});


const Empresa = sequelize.define('empresa', {
    login: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    nome: {
        type: DataTypes.STRING,
        allowNull: false
    },

    senha: {
        type: DataTypes.STRING,
        allowNull: false
    },

    foto: {
        type: DataTypes.STRING
    },

    cnpj: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    }

});


const Story = sequelize.define('story', {
    idStory: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        autoIncrement: true,
        primaryKey: true
    },

    conteudo: {
        type: DataTypes.STRING,
        allowNull: false
    },


    dataCriacao: {
        type: DataTypes.DATE,
        allowNull: false
    }


});

const Posts = sequelize.define('posts', {
    idStory: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        autoIncrement: true,
        primaryKey: true
    },

    tipo: {
        type: DataTypes.STRING
    },

    conteudo: {
        type: DataTypes.STRING
    },


    comentarios: {
        type: DataTypes.STRING
    },

    dataCriacao: {
        type: DataTypes.DATE,
        allowNull: false
    },


    likes: {
        type: DataTypes.INTEGER
    }

});


const Turma = sequelize.define('turma', {
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    nome: {
        type: DataTypes.STRING,
        allowNull: false
    }

});


const Materia = sequelize.define('materia', {
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    nome: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true
    }

});

const PerfilAluno = sequelize.define('perfilAluno', {
    nomeUser: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    dataCriacao: {
        type: DataTypes.DATE,
        allowNull: false
    },

    seguidores: {
        type: DataTypes.INTEGER
    }

});

Aluno.hasMany(PerfilAluno);
PerfilAluno.belongsTo(Aluno);

const PerfilProfessor = sequelize.define('perfilProfessor', {
    nomeUser: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    dataCriacao: {
        type: DataTypes.DATE,
        allowNull: false
    },

    seguidores: {
        type: DataTypes.INTEGER
    }

});

Professor.hasMany(PerfilProfessor);
PerfilProfessor.belongsTo(Professor);

const PerfilEmpresa= sequelize.define('perfilEmpresa', {
    nomeUser: {
        type: DataTypes.STRING,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    dataCriacao: {
        type: DataTypes.DATE,
        allowNull: false
    },

    seguidores: {
        type: DataTypes.INTEGER
    }

});

Empresa.hasMany(PerfilEmpresa);
PerfilEmpresa.belongsTo(Empresa);

//-----------------------------------
Aluno.hasMany(storysAluno);
Empresa.hasMany(storysEmpresa);
Professor.hasMany(storysProfessor);

//-------------------------------------

const amizadeAlunoProfessor = sequelize.define('amizadeProfAluno', {
    convesa:{
        type: DataTypes.STRING
    }
})

Aluno.belongsToMany(amizadeAlunoProfessor);
Professor.belongsToMany(amizadeAlunoProfessor);


const amizadeAlunoEmpresa = sequelize.define('amizadeEmpAluno', {
    convesa:{
        type: DataTypes.STRING
    }
})

Aluno.belongsToMany(amizadeAlunoEmpresa);
Empresa.belongsToMany(amizadeAlunoEmpresa);


const amizadeAlunos = sequelize.define('amizadeAlunos', {
    convesa:{
        type: DataTypes.STRING
    }
})

Aluno.belongsToMany(amizadeAlunos);
Aluno.belongsToMany(amizadeAlunos);


const amizadeProfessorEmpresa = sequelize.define('amizadeProfEmpresa', {
    convesa:{
        type: DataTypes.STRING
    }
})

Empresa.belongsToMany(amizadeProfessorEmpresa);
Professor.belongsToMany(amizadeProfessorEmpresa);

//---------------------------------------------

const vagasVinculos = sequelize.define('vagaVinculos', {
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        unique: true,
        primaryKey: true
    },

    descricao: {
        type: DataTypes.STRING,
        allowNull: false,
    }

})

Empresa.hasMany(vagasVinculos);
vagasVinculos.belongsTo(Empresa);

//---------------------------------------------
//EmpresaAluno
Empresa.belongsToMany(empresaAluno);
Aluno.belongsToMany(empresaAluno);

//EmpresaProfessor



//--------------------------------------------
//PostsAlunos

//PostsProfessores

//postsEmpresas

//---------------------------------------------
//postsSalvosAlunos
Aluno.belongsToMany(postsSalvosAlunos)

//PostsSalvosProfessores
Professor.belongsToMany(PostsSalvosProfessores)

//PostsSalvosEmpresas
Empresa.belongsToMany(PostsSalvosEmpresas)

//---------------------------------------------

//profTurma

//alunoTurma
Aluno.belongsToMany(alunoTurma);
Turma.belongsToMany(alunoTurma);


//---------------------------------------------
//assuntosMaterias
const AssuntosMaterias = sequelize.define('AssuntosMaterias', {
   id: {
    type: DataTypes.INTEGER,
    allowNull: false,
    unique: true
   },

    nome: {
        type: DataTypes.STRING,
        allowNull: true,
        unique: true
    },
    descricao: {
        type: DataTypes.STRING,
        allowNull: false
    }

});

    Materia.hasMany(AssuntosMaterias);
    AssuntosMaterias.belongsTo(Materia);

//materiaProf
Professor.belongsToMany(materiaProf);
Materia.belongsToMany(materiaProf);

//---------------------------------------------
//Atividades

const Atividade = sequelize.define('Atividade', {
    id: {
        type: DataTypes.INTEGER,
        allowNull: false,
        primaryKey: true
    },
    data: {
        type: DataTypes.DATE,
        allowNull: false
    },
    titulo: {
        type: DataTypes.STRING,
        allowNull: false
    },
    quantPontos: {
        type: DataTypes.INTEGER,
        allowNull: false
    },
    gabarito: {
        type: DataTypes.STRING,
        allowNull: false
    },

    comentarios: {
        type: DataTypes.STRING,
        allowNull: true
    }

});
Materia.hasMany(Atividade);
Atividade.belongsToMany(Materia);
AssuntosMaterias.hasMany(Atividade);
Atividade.belongsToMany(AssuntosMaterias);


//atividadeTurma
const AtividadeTurma = sequelize.define('AtividadeTurma', {
    comentarios: {
        type: DataTypes.STRING,
        allowNull: true

    }

});

Atividade.belongsToMany(Turma, { through: AtividadeTurma }); // Relacionamento N-M: Um usuário pode ter muitos cursos
Turma.belongsToMany(Atividade, { through: AtividadeTurma });

//AtividadeAlunos
const AtividadeAlunos = sequelize.define('AtividadeAlunos', {
    resposta: {
        type: DataTypes.STRING,
        allowNull: true
    },
    pontosConquistados: {
        type: DataTypes.INTEGER,
        allowNull: false
    }

});
Atividade.belongsToMany(Aluno, { through: AtividadeAlunos }); // Relacionamento N-M: Um usuário pode ter muitos cursos
Aluno.belongsToMany(Atividade, { through: AtividadeAlunos });
//---------------------------------------------

//conteudo
const Conteudo = sequelize.define('Conteudo', {

    dataConteudo: {
        type: DataTypes.DATE,
        allowNull: false,
    },
    
    conteudo: {
        type: DataTypes.STRING,
        allowNull: false

    }

});
Materia.hasMany(Conteudo);
Conteudo.belongsTo(Materia)
Professor.hasMany(Conteudo);
Conteudo.belongsTo(Professor);
//videoAula

const VideoAula = sequelize.define('videoAula', {

    dataConteudo: {
        type: DataTypes.DATE,
        allowNull: false,
    },

    titulo: {
        type: DataTypes.STRING,
        allowNull: false

    },
    
    video: {
        type: DataTypes.STRING,
        allowNull: false

    },
    
    duracao: {
        type: DataTypes.INTEGER,
        allowNull: false

    },
    
    comentarios: {
        type: DataTypes.STRING
    },
    
    dtComentarios: {
        type: DataTypes.DATE,
        allowNull: false

    },
    
    likes: {
        type: DataTypes.INTEGER
    }

});

Materia.hasMany(VideoAula);
VideoAula.belongsTo(Materia)
Professor.hasMany(VideoAula);
VideoAula.belongsTo(Professor);

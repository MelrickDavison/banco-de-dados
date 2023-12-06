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


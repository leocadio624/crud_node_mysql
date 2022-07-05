const controller = {};

    controller.list = (req, response) => {

        //response.render('libros');
        
        req.getConnection((err, conn) => {
            conn.query('select * from libro where estado = 1',(err, libros) =>{
                if(err)
                    response.json(err);
                
                response.render('libros',{
                    data:libros
                });
                
            });
        })
    };

    controller.save = (request, response) => {

        request.body.estado = 1
        let data = request.body;

        request.getConnection((err, conn) => {

            conn.query('insert into libro set ?',[data], (err, libro) => {
            
            if(err)
                response.send('Ocurrio una interrupccion');
            
            response.redirect('/');


            })

        });


        
    }

    controller.update = (request, response) => {

        const {id} = request.params;
        const data = request.body;

        //response.send('mensaje generico');

        request.getConnection((err, conn) => {
            conn.query('update libro set ? where id = ?',[data, id], (err, rows) => {
            
            
            if(err)
                response.send('Ocurrio una interrupccion, intentelo mas tarde');
            else
                response.redirect('/');


            });

        });
        
        
                
    }


    controller.delete = (request, response) => {

        const {id} = request.params;
        request.getConnection((err, conn) => {
            conn.query('update libro set estado = 0 where id = ?',[id], (err, rows) => {

                response.redirect('/');
            });
        });
                
    }

    controller.edit = (request, response) => {

        const {id} = request.params;
        request.getConnection((err, conn) => {

            conn.query('SELECT * FROM libro WHERE id = ?',[id], (err, libro) => {

                if(err)
                    response.render(err);

                response.render('edit_libro',{
                    data : libro[0]
                });
            });
        });
    }

module.exports = controller;
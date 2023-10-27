# README
primero se desarrollo el modelo, las tablas y las relaciones en un exel (el cual va adjunto en el zip) para poder ahorar tiempo en el desarrollo del proyecto. 

El readme tiene la información necesaria de como se realizó el proyecto:
-
 * Ruby version 3.1.1

* System dependencies

* Configuration
el proyecto se puede clorar desde el repositorio en  github: clone https://github.com/NatieMor/EcoDrive.git

Se configuro bootstrap por medio de gemas, al igual que pagy, pg_search y devise para crear control de usuarios

* Database creation nombre de la base de datos donde se trabajo 
  database: EcoDrive_development
  se utilizo postgresql para la base de datos

* Database initialization: 
se creo las migracion y se comprobo con rails s en el localhost3000 conectando el servidor ssh -p 2222 inforcap@127.0.0.1
se generaron las seed para poblar los modelos creados 
se comprobo por medio de rails db en la base de datos que las tablas fueran llenadas con informacion 

Se genero roles de usuarios donde el rol cliente : 0
rol administrador : 1
se dejo en como defecto la creacion de rol= 0, es decir cliente.

se controlaron las vistas segun los roles asignados
se utilizo una plantilla para el estilo y el llenado de las vistas index de inicio, termino y condiciones; nosotros. 
se reutilo el codigo para navbar y footer.
para la generacion de las tables de autos

se incorporo validaciones en los modelos.

*se utilizo como singular para:
---bateria esta en singular como baterium
---tecnologia esta como singular tecnologium
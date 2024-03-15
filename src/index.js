const express = require("express");
const app = express();
const oracledb = require("oracledb");
const cors = require("cors");

oracledb.outFormat = oracledb.OUT_FORMAT_OBJECT;

app.use(cors());
app.use(express.json());

// Se realiza la conexion a la base de datos
async function connectionOracleBD() {
  try {
    await oracledb.createPool({
      user: "empleados_crud",
      password: "admin",
      connectionString: "172.17.0.2/XE",
    });
    console.log("Conexion establecida");
  } catch (error) {
    console.log("Ah ocurrido un error !", error);
  }
}
connectionOracleBD();
app.use(express.json());

app.post("/create", async (request, response) => {
  const { nombre, apellido, fechaNacimiento, salario, departamentoId } = request.body;
  
  try {
    const connection = await oracledb.getConnection();
    const sql = `INSERT INTO empleados (nombre, apellido, fecha_nacimiento, salario, departamento_id) VALUES (:nombre, :apellido, :fechaNacimiento, :salario, :departamentoId)`;
    const binds = {
      nombre: nombre,
      apellido: apellido,
      fechaNacimiento: new Date(fechaNacimiento),
      salario: salario,
      departamentoId: departamentoId,
    };
    const options = { autoCommit: true };
    const result = await connection.execute(sql, binds, options);
    console.log("Datos insertados correctamente:", result.rowsAffected);
    response.status(200).send("Datos insertados correctamente");
  } catch (err) {
    console.log("Error al insertar datos:", err, nombre, apellido, fechaNacimiento, salario, departamentoId);
    response.status(500).send("Error");
  }
});
app.get("/obtenerEmpleado", async (request, response) => {
  try {
    const connection = await oracledb.getConnection();

    //Codigo para llamar el procedimiento
    const binVars = {
      departamento_id: 1,
      empleados_out:{dir: oracledb.BIND_OUT, type: oracledb.CURSOR} // la variable se coloca asi al ser un cursor
    }

    const result = await connection.execute(
      `BEGIN 
          empleados_crud.obtener_empleados_por_departamento(:departamento_id, :empleados_out);
       END;`,
       binVars
    );

    // Se itera por todas las columnas
    const resultSet = result.outBinds.empleados_out;
    let rows = [];
    let row;

    while ((row = await resultSet.getRow())) {
      rows.push(row);
    }
    //Obtencion de la salida de empleados_out
    await resultSet.close();
    await connection.close();
    
    response.send(rows);
  } catch (err) {
    console.log("Error al llamar al procedimiento", err);
    response.status(500).send("Error");
  }
});



// Esta parte del codigo siempre tiene que ir al final
app.listen(3002, () => {
  console.log("Corriendo en el puerto 3002");
});

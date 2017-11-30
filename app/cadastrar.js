const addObject = (connection, req) => {
    
        return new Promise((resolve, reject) => {
            let sql = `INSERT INTO controle (patrimonio, entregou, dateIn, 
                setor) VALUES ('${req.body.patrimonio}', '${req.body.setor}', '${req.body.entregou}', '${req.body.dateIn}')`
    
            connection.query(sql, (err, result) => {
                if (err) {
                    reject(err)
                } else {
                    resolve({ lastID: result.insertId })
                }
            })
        })
}

module.exports = {
    addObject 
}
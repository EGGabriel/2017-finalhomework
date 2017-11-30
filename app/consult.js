const getObject = (connection, req) => {
    return new Promise((resolve, reject) => {
        connection.query("SELECT * FROM controle", (err,result) => {
            if(err){
                reject(err)
            }else{
                resolve(result)
            }
        })
    })
}
module.exports = {
    getObject
}
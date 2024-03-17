import { configDotenv } from "dotenv";
import express from "express"

configDotenv()

const server = express();
const port = process.env.PORT;

server.get("/", (req, res) => {
    res.json({res: "its Working"})
})

server.listen(port, () => {
    console.log(`Application is running on port ${port}`)
})
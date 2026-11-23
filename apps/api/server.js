import { createServer } from "node:http";
import { isFull } from "@scheduler/booking-rules";


const port = Number(process.env.PORT ?? 3000);

createServer((req, res) => {
  if (req.url === "/health") {
    res.writeHead(200, { "content-type": "application/json" });
    return res.end(JSON.stringify({ status: "ok", fullAtCapacity: isFull(4, 3) }));
  }
  res.writeHead(404).end();
}).listen(port, () => console.log(`api listening on ${port}`));
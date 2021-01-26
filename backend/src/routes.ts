import { Router, Request, Response } from 'express'
import { getEntidade, getEntidades, removeEntidade, saveEntidade, updateEntidade } from "./controller/entidade_controller";
import { listAllUsers, saveUser } from './controller/UserController';


const routes = Router()
routes.get('/', (request: Request, response: Response) => {
    return response.json({ message: 'Programming is so boring' })
})

routes.get('/entidades', getEntidades)
routes.get('/entidades/:id', getEntidade)
routes.post('/entidades', saveEntidade)
routes.put('/entidades/:id', updateEntidade)
routes.delete('/entidades/:id', removeEntidade)

routes.post('/users', saveUser)
routes.get('/users', listAllUsers)

export default routes
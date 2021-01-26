import { getRepository } from "typeorm";
import { Entidade } from "../entity/Entidade";
import { request, Request, Response } from "express";

export const getEntidades = async (request: Request, response: Response) => {
    const entidades = await getRepository(Entidade).find()
    return response.json(entidades)
};

export const saveEntidade = async (request: Request, response: Response) => {
    const entidade = await getRepository(Entidade).save(request.body)
    response.json(entidade)
};

export const getEntidade = async (request: Request, response: Response) => {
    const { id } = request.params
    const entidade = await getRepository(Entidade).findOne(id)
    return response.json(entidade)
};

export const updateEntidade = async (request: Request, response: Response) => {
    const { id } = request.params
    const entidade = await getRepository(Entidade).update(id, request.body)
    if (entidade.affected === 1) {
        const entidadeUpdated = await getRepository(Entidade).findOne(id)
        return response.json(entidadeUpdated)
    }
    return response.status(404).json({ message: 'Entidade não encontrada!' })
};

export const removeEntidade = async (request: Request, response: Response) => {
    const { id } = request.params
    const entidade = await getRepository(Entidade).delete(id)
    if (entidade.affected === 1) {
        return response.json({ message: 'entidade removida!' })
    }
    return response.status(404).json({ message: 'Entidade não encontrada!' })
};
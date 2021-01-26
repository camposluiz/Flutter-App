import { getRepository } from "typeorm";
import { NextFunction, request, Request, Response } from "express";
import { User } from "../entity/User";
import * as bcrypt from "bcrypt";


export const saveUser = async (request: Request, response: Response) => {
    const { name, email, password } = request.body
    const passwordHash = await bcrypt.hash(password, 10)
    const user = await getRepository(User).save({
        name,
        email,
        password: passwordHash
    })
    return response.json(user)
}

export const listAllUsers = async (request: Request, response: Response) => {
    const users = await getRepository(User).find()
    return response.json(users)
}

export class UserController {

    // private userRepository = getRepository(User);

    // public async saveUser(request: Request, response: Response, next: NextFunction) {
    //     const { name, email, password } = request.body
    //     const passwordHash = await bcrypt.hash(password, 10)
    //     return await this.userRepository.save({
    //         name,
    //         email,
    //         password: passwordHash
    //     })
    //     // return response.json(user)
    // }

    // async all(request: Request, response: Response, next: NextFunction) {
    //     return this.userRepository.find();
    // }

    // async one(request: Request, response: Response, next: NextFunction) {
    //     return this.userRepository.findOne(request.params.id);
    // }

    // async save(request: Request, response: Response, next: NextFunction) {
    //     return this.userRepository.save(request.body);
    // }

    // async remove(request: Request, response: Response, next: NextFunction) {
    //     let userToRemove = await this.userRepository.findOne(request.params.id);
    //     await this.userRepository.remove(userToRemove);
    // }

}
import { Column, CreateDateColumn, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Entidade {
    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    title: string;

    @Column()
    nome: string;

    @CreateDateColumn()
    created_at: Date;

    @CreateDateColumn()
    updated_at: Date;
}
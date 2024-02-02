export interface category {
    id: number;
    name: string;
    description: string | null;
}


export type categoryWithoutId = Omit<category, "id">;
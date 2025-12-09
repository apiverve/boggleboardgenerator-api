declare module '@apiverve/boggleboardgenerator' {
  export interface boggleboardgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface boggleboardgeneratorResponse {
    status: string;
    error: string | null;
    data: BoggleBoardGeneratorData;
    code?: number;
  }


  interface BoggleBoardGeneratorData {
      board: Array<string[]>;
      size:  number;
      html:  string;
      image: Image;
  }
  
  interface Image {
      imageName:   string;
      format:      string;
      downloadURL: string;
      expires:     number;
  }

  export default class boggleboardgeneratorWrapper {
    constructor(options: boggleboardgeneratorOptions);

    execute(callback: (error: any, data: boggleboardgeneratorResponse | null) => void): Promise<boggleboardgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: boggleboardgeneratorResponse | null) => void): Promise<boggleboardgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<boggleboardgeneratorResponse>;
  }
}

declare module '@apiverve/boggleboardgenerator' {
  export interface boggleboardgeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface boggleboardgeneratorResponse {
    status: string;
    error: string | null;
    data: BoggleBoardGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface BoggleBoardGeneratorData {
      board: Array<(null | string)[]>;
      size:  number | null;
      html:  null | string;
      image: Image;
  }
  
  interface Image {
      imageName:   null | string;
      format:      null | string;
      downloadURL: null | string;
      expires:     number | null;
  }

  export default class boggleboardgeneratorWrapper {
    constructor(options: boggleboardgeneratorOptions);

    execute(callback: (error: any, data: boggleboardgeneratorResponse | null) => void): Promise<boggleboardgeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: boggleboardgeneratorResponse | null) => void): Promise<boggleboardgeneratorResponse>;
    execute(query?: Record<string, any>): Promise<boggleboardgeneratorResponse>;
  }
}

interface NewPoll {
    PreviousPollId?: number;
    authorId?: number;
    title: string;
    description: string;
    tags: string;
    emails: string;
    nonAnonymous: boolean;
    archived: boolean;
    questions: NewQuestion[];
    newEmail: string;
    newEmails: string[];
    newTag: string;
    newTags: string[];
  }


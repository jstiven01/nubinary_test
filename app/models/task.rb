class Task < ApplicationRecord
    enum status: {
        opened: 0,
        in_progress: 1,
        finished: 2,
      }
end

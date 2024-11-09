from pydantic import BaseModel
from typing import Optional

class Person(BaseModel):
    id: int
    name: str
    profile_path: Optional[str]

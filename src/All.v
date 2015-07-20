Module Option.
  Definition bind {A B : Type} (x : option A) (f : A -> option B) : option B :=
    match x with
    | Some x => f x
    | None => None
    end.
End Option.

Module Sum.
  Definition bind {E A B : Type} (x : A + E) (f : A -> B + E) : B + E :=
    match x with
    | inl x => f x
    | inr e => inr e
    end.
End Sum.
This repo contains GAP:

gap-system.org

code for computing the number of ai-semirings of a given order n, for some
(very) small values of n. The implemented algorithm is not sophisticated,
and relies on using the Smallsemi package for GAP:

https://github.com/gap-packages/smallsemi

To compute the number do the following:

1. Start GAP in the usual way;
2. Read the file `ai-semiring.g` in GAP:
   `Read("path/to/ai-semiring.g");`
3. To compute the number of ai-semirings with n elements up to isomorphism do:
   `Length(AiSemirings(n));` or do `AiSemirings(n);` if you want to
   see the generated multiplication tables.

#include <stdlib.h>
#include <stdio.h>
#include <wchar.h>

int main()
{
  FILE   *in,
         *out;
  char    filename[FILENAME_MAX];
  wint_t  wch;
  int      ch,
            i;

  if (!(in = fopen("generate_lang_files.txt", "r")))
    return 1;

  for (;;) {
    i = 0;

    while ((ch = fgetc(in)) != EOF) {
      if (ch == ':') {
        filename[i] = '\0';
        break;
      } else if (ch == '\n')
        exit(0);

      filename[i] = ch;
      ++i;
    }

    if (!(out = fopen(filename, "a")))
      exit(1);

    while ((wch = fgetwc(in)) != '\n')
      fputwc(wch, out);

    fputwc('\n', out);
    fclose(out);
  }

  return 0;
}

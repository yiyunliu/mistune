import klee
import mistune.all

markdown = mistune.all.create_markdown()
klee.enable_hlpc_trace()
text = klee.make_symbolic_latin1(8,b'text')
print(markdown(text))

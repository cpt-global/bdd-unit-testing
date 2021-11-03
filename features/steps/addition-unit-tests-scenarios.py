from behave import *
import subprocess
from subprocess import PIPE

from pathlib import Path
from Cheetah.Template import Template

projectDir="/home/ennisa/workspace/projects/cpt/python/behave_unit_testing"
templateDef= Path(projectDir+"/templates/mod-addition-unit-test-me.jcl").read_text()


# --tags=@int --tags=@e2e
# @given('Both numbers are positive')
@given(u': Both numbers are positive')
def step_impl(context):
    pass


@when(u'the result should be positive too "{x:g}"')
def step_impl(context,x):
    # Call Cobol Unit Test
    process = subprocess.run(['zowe','--version'], shell=True, check=True,stderr=PIPE,stdout=PIPE)
    print(f'The location of the binary is: {process.stdout}')
    nameSpace = {'x': x, 'y': 'y'}
    t = Template(templateDef, searchList=[nameSpace])

    with open(projectDir+"/tests/unit/"+str(x)+"-testdrive.jcl", "w") as text_file:
        text_file.write(str(t))
    # Apply test logic

    pass
    # assert context.failed is False
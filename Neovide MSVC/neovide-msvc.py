import sys
import subprocess


def neovide():
    vs_dev_cmd = r"C:\Program Files (x86)\Microsoft Visual Studio\18\BuildTools\Common7\Tools\VsDevCmd.bat"
    neovide_path = r"C:\Program Files\Neovide\neovide.exe"

    args = " ".join(sys.argv[1:])

    command = f'call "{vs_dev_cmd}" && start "" "{neovide_path}" {args}'

    subprocess.Popen(command, shell=True)


if __name__ == "__main__":
    neovide()
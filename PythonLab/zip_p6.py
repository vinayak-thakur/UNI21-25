import os
import zipfile

folder = input("Enter folder name to be zipped: ")
myfile = folder + ".zip"

with zipfile.ZipFile(myfile, "w") as zipobject:
    for foldername, subfolders, file_names in os.walk(folder):
        for filename in file_names:
            filepath = os.path.join(foldername, filename)
            zipobject.write(filepath, os.path.basename(filepath))
    if os.path.exists(myfile):
        print(f"{myfile} zipfile created")
    else:
        print("not found")

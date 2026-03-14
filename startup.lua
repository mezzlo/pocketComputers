if fs.exists ("userData/name.txt") then
    shell.run("main")
else
    shell.run("init")
end
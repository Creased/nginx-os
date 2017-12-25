TARGET = nginx-os

all: $(TARGET)

$(TARGET): $(TARGET).yml
	moby build $(YAML) $^

clean:
	rm $(TARGET)-cmdline $(TARGET)-initrd.img $(TARGET)-kernel


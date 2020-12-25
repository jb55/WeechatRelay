

SRCS= WeechatRelay/NSInputStream_Extensions.swift \
      WeechatRelay/Queue.swift \
      WeechatRelay/Weechat.swift \
      WeechatRelay/WeechatDataType.swift \
      WeechatRelay/WeechatMessageHandler.swift \
      WeechatRelay/WeechatMessageParser.swift \
      WeechatRelay/main.swift

all:
	swift build


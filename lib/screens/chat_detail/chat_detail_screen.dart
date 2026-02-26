import 'package:flutter/material.dart';

class ChatMessage {
  final String text;
  final bool isMe;
  final String time;

  ChatMessage({required this.text, required this.isMe, required this.time});
}

class ChatDetailScreen extends StatefulWidget {
  final String agentName;

  const ChatDetailScreen({super.key, required this.agentName});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  late List<ChatMessage> messages;
  final TextEditingController _msgController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

  void _loadMessages() {
    if (widget.agentName == "ChatGPT") {
      messages = [
        ChatMessage(
          text:
              "Hi there! I'm ChatGPT. How can I help you write better code today?",
          isMe: false,
          time: "10:00 AM",
        ),
        ChatMessage(
          text: "Can you help me with a Flutter UI component?",
          isMe: true,
          time: "10:02 AM",
        ),
        ChatMessage(
          text:
              "Of course! Flutter is fantastic for building smooth UIs. What kind of component are you looking to build?",
          isMe: false,
          time: "10:02 AM",
        ),
        ChatMessage(
          text: "I need a WhatsApp-style chat screen.",
          isMe: true,
          time: "10:05 AM",
        ),
        ChatMessage(
          text:
              "Great idea! You'll want to use a ListView for the messages and style the bubbles with Container and BorderRadius. Let me know if you need the exact code snippet!",
          isMe: false,
          time: "10:06 AM",
        ),
      ];
    } else if (widget.agentName == "Grok") {
      messages = [
        ChatMessage(
          text: "Hey! Let's have some fun. Ask me anything, human!",
          isMe: false,
          time: "08:15 PM",
        ),
        ChatMessage(
          text: "Tell me a fun fact about space?",
          isMe: true,
          time: "08:20 PM",
        ),
        ChatMessage(
          text:
              "Did you know that neutron stars are so dense, one teaspoon of their material weighs 6 billion tons on Earth? Crazy, right? Almost as heavy as debugging legacy code.",
          isMe: false,
          time: "08:21 PM",
        ),
        ChatMessage(text: "Haha! Good one.", isMe: true, time: "08:22 PM"),
      ];
    } else if (widget.agentName == "Gemini") {
      messages = [
        ChatMessage(
          text:
              "Hello! I am Gemini, ready to brainstorm ideas for your next creative project.",
          isMe: false,
          time: "09:30 AM",
        ),
        ChatMessage(
          text: "I need some ideas for a sci-fi art piece.",
          isMe: true,
          time: "09:35 AM",
        ),
        ChatMessage(
          text:
              "How about a neon-lit cyberpunk city that's built on the underside of a massive, slowly floating asteroid?",
          isMe: false,
          time: "09:36 AM",
        ),
        ChatMessage(
          text: "That sounds breathtaking!",
          isMe: true,
          time: "09:38 AM",
        ),
        ChatMessage(
          text:
              "Let me know if you want to explore color palettes or specific futuristic elements to include in the scene!",
          isMe: false,
          time: "09:40 AM",
        ),
      ];
    } else {
      messages = [
        ChatMessage(
          text: "Hello! I am ${widget.agentName}. How may I assist you today?",
          isMe: false,
          time: "12:00 PM",
        ),
        ChatMessage(
          text: "Can you show me an example of your capabilities?",
          isMe: true,
          time: "12:05 PM",
        ),
        ChatMessage(
          text:
              "Sure! I can answer questions, translate text, and help you structure your thoughts effectively. Just type your prompt below.",
          isMe: false,
          time: "12:05 PM",
        ),
      ];
    }
  }

  void _sendMessage() {
    if (_msgController.text.trim().isEmpty) return;
    setState(() {
      messages.add(
        ChatMessage(
          text: _msgController.text.trim(),
          isMe: true,
          // Using a fixed time for simplicity in this demo presentation
          time: "Now",
        ),
      );
      _msgController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B141A), // WhatsApp dark background
      appBar: AppBar(
        backgroundColor: const Color(0xFF1F2C34), // WhatsApp dark app bar
        titleSpacing: 0,
        leadingWidth: 70,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.arrow_back, color: Colors.white),
              const SizedBox(width: 4),
              Hero(
                tag: 'avatar_${widget.agentName}',
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: const Color(0xFF00A884),
                  child: Text(
                    widget.agentName[0],
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        title: InkWell(
          onTap: () {},
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.agentName,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Text(
                'online',
                style: TextStyle(fontSize: 13, color: Color(0xFF8696A0)),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.videocam_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.call_outlined, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF0B141A),
                image: DecorationImage(
                  // Dark WhatsApp style patterned chat background
                  image: const NetworkImage(
                    'https://user-images.githubusercontent.com/15075759/28719144-86dc0f70-73b1-11e7-911d-60d70fcded21.png',
                  ),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.black.withOpacity(0.9), // strong diming to blend
                    BlendMode.dstATop,
                  ),
                ),
              ),
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  final msg = messages[index];
                  return _buildMessageBubble(msg, index);
                },
              ),
            ),
          ),
          _buildBottomInputArea(),
        ],
      ),
    );
  }

  Widget _buildMessageBubble(ChatMessage msg, int index) {
    // Basic logic to check if previous message was from the same sender
    bool isFirstInGroup = true;
    if (index > 0 && messages[index - 1].isMe == msg.isMe) {
      isFirstInGroup = false;
    }

    return Align(
      alignment: msg.isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width * 0.8,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(12),
              topRight: const Radius.circular(12),
              bottomLeft: Radius.circular(
                msg.isMe ? 12 : (isFirstInGroup ? 0 : 12),
              ),
              bottomRight: Radius.circular(
                msg.isMe ? (isFirstInGroup ? 0 : 12) : 12,
              ),
            ),
          ),
          color: msg.isMe
              ? const Color(0xFF005C4B)
              : const Color(0xFF202C33), // WhatsApp Dark theme bubble colors
          margin: const EdgeInsets.symmetric(vertical: 3),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: msg.isMe
                  ? CrossAxisAlignment.end
                  : CrossAxisAlignment.start,
              children: [
                Text(
                  msg.text,
                  style: const TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 4),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      msg.time,
                      style: const TextStyle(
                        fontSize: 11,
                        color: Colors.white70,
                      ),
                    ),
                    if (msg.isMe) ...[
                      const SizedBox(width: 4),
                      const Icon(
                        Icons.done_all,
                        size: 14,
                        color: Color(0xFF53BDEB),
                      ), // Blue ticks
                    ],
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomInputArea() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFF2A3942), // Dark theme input color
                borderRadius: BorderRadius.circular(24),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  IconButton(
                    icon: const Icon(
                      Icons.emoji_emotions_outlined,
                      color: Color(0xFF8696A0),
                    ),
                    onPressed: () {},
                  ),
                  Expanded(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxHeight: 120),
                      child: TextField(
                        controller: _msgController,
                        style: const TextStyle(color: Colors.white),
                        maxLines: null,
                        keyboardType: TextInputType.multiline,
                        decoration: const InputDecoration(
                          hintText: 'Message',
                          hintStyle: TextStyle(
                            color: Color(0xFF8696A0),
                            fontSize: 16,
                          ),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 12),
                        ),
                        onChanged: (val) {
                          setState(() {}); // Trigger refresh for send icon
                        },
                      ),
                    ),
                  ),
                  IconButton(
                    icon: const Icon(
                      Icons.attach_file,
                      color: Color(0xFF8696A0),
                    ),
                    onPressed: () {},
                  ),
                  if (_msgController.text.trim().isEmpty)
                    IconButton(
                      icon: const Icon(
                        Icons.camera_alt,
                        color: Color(0xFF8696A0),
                      ),
                      onPressed: () {},
                    ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 8),
          CircleAvatar(
            backgroundColor: const Color(0xFF00A884), // WhatsApp Green
            radius: 24,
            child: IconButton(
              icon: Icon(
                _msgController.text.trim().isEmpty ? Icons.mic : Icons.send,
                color: Colors.white,
                size: 22,
              ),
              onPressed: _msgController.text.trim().isEmpty
                  ? null
                  : _sendMessage,
            ),
          ),
        ],
      ),
    );
  }
}

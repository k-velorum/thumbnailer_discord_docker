import os
import discord
from discord.ext import commands

intents = discord.Intents.default()
intents.message_content = True

bot = commands.Bot(command_prefix="!", intents=intents)

@bot.event
async def on_ready():
    await bot.load_extension("file_viewer")
    print(f"Logged in as {bot.user}")
token = os.environ["DISCORD_BOT_TOKEN"]
if token == "":
    print("Please set the DISCORD_BOT_TOKEN environment variable before running the bot.")
    exit(1)
bot.run(token)
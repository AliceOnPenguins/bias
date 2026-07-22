{ self, inputs, ... }: {
  flake.homeModules.discord =
    {
      pkgs,
      lib,
      config,
      ...
    }:
    {
      programs.equibop = {
        enable = true;
        settings = {
          discordBranch = "stable";
          minimizeToTray = true;
          arRPC = true;
          splashColor = "rgb(212, 190, 152)";
          splashBackground = "rgb(50, 48, 47)";
          audio = {
            ignoreVirtual = true;
            granularSelect = false;
            workaround = false;
            ignoreInputMedia = true;
            onlySpeakers = true;
            onlyDefaultSpeakers = false;
            ignoreDevices = true;
            deviceSelect = false;
          };
          spellCheckLanguages = [
            "en-US"
            "en"
          ];
        };
        equicord = {
          settings = {
            autoUpdate = true;
            autoUpdateNotification = true;
            useQuickCss = true;
            themeLinks = [ ];
            eagerPatches = false;
            enabledThemes = [
              "yunahDark.css"
            ];
            enabledThemeLinks = [ ];
            enableOnlineThemes = true;
            pinnedThemes = [ ];
            themeNames = { };
            themeActivationModes = { };
            enableReactDevtools = false;
            mainWindowFrameless = false;
            frameless = true;
            transparent = true;
            winCtrlQ = false;
            disableMinSize = false;
            winNativeTitlebar = false;
            plugins = {
              ChatInputButtonAPI = {
                enabled = true;
              };
              CommandsAPI = {
                enabled = true;
              };
              DynamicImageModalAPI = {
                enabled = true;
              };
              MemberListDecoratorsAPI = {
                enabled = true;
              };
              MessageAccessorriesAPI = {
                enabled = true;
              };
              MessageDecorationsAPI = {
                enabled = true;
              };
              MessageEventsAPI = {
                enabled = true;
              };
              MessagePopoverAPI = {
                enabled = true;
              };
              MessageUpdaterAPI = {
                enabled = true;
              };
              NicknameIconsAPI = {
                enabled = true;
              };
              ServerListAPI = {
                enabled = true;
              };
              UserSettingsAPI = {
                enabled = true;
              };
              WebRichPresence = {
                enabled = true;
              };
              ClearURLs = {
                enabled = true;
              };
              CopyFileContents = {
                enabled = true;
              };
              CrashHandler = {
                enabled = true;
              };
              Decor = {
                enabled = true;
                baseUrl = "https://decor.fieryflames.dev";
                agreedToGuidelines = true;
              };
              Experiments = {
                enabled = true;
              };
              FakeNitro = {
                enabled = true;
                enableStickerBypass = true;
                enableStreamQualityBypass = true;
                enableEmojiBypass = true;
                transformEmojis = true;
                transformStickers = true;
                transformCompoundSentence = false;
                emojiSize = 48;
                hyperLinkText = "{{NAME}}";
                useEmojiHyperLinks = true;
                disableEmbedPermissionCheck = false;
                stickerSize = 160;
                useStickerHyperLinks = true;
              };
              FixImagesQuality = {
                enabled = true;
              };
              GameActivityToggle = {
                enabled = true;
                location = "PANEL";
                oldIcon = false;
              };
              MentionAvatars = {
                enabled = true;
                showAtSymbol = true;
              };
              MessageLinkEmbeds = {
                enabled = true;
                listMode = "blacklist";
                idList = "";
                automodEmbeds = "never";
              };
              MessageLogger = {
                enabled = true;
                collapseDeleted = false;
                deleteStyle = "text";
                ignoreBots = false;
                ignoreSelf = false;
                ignoreSelfEdits = false;
                ignoreUsers = "";
                ignoreChannels = "";
                ignoreGuilds = "";
                logEdits = true;
                logDeletes = true;
                showEditDiffs = false;
                inlineEdits = true;
                separatedDiffs = false;
              };
              NoDevtoolsWarning = {
                enabled = true;
              };
              NoF1 = {
                enabled = true;
              };
              NoOnboardingDelay = {
                enabled = true;
              };
              NoTypingAnimation = {
                enabled = true;
              };
              QuickReply = {
                enabled = true;
                ignoreBlockedAndIgnored = true;
                shouldMention = 2;
              };
              ReactErrorDecoder = {
                enabled = true;
              };
              ReadAllNotificationsButton = {
                enabled = true;
              };
              SendTimestamps = {
                enabled = true;
                replaceMessageContents = true;
              };
              ServerInfo = {
                enabled = true;
              };
              ShowMeYourName = {
                enabled = true;
                triggerNameRerender = true;
                messages = true;
                replies = true;
                mentions = true;
                typingIndicator = true;
                memberList = true;
                profilePopout = true;
                reactions = true;
                friendNameOnlyInDirectMessages = false;
                customNameOnlyInDirectMessages = false;
                discriminators = true;
                truncateAllNamesWithStreamerMode = true;
                removeDuplicates = true;
                ignoreGradients = true;
                ignoreFonts = false;
                animateGradients = false;
                includedNames = "{custom, friend, nick} [{display}] (@{user})";
                customNameColor = "Role-25";
                friendNameColor = "Role-25";
                nicknameColor = "Role-25";
                displayNameColor = "Role-25";
                usernameColor = "Role-25";
                nameSeparator = " ";
                alwaysShowEffects = false;
                hideDefaultAtSign = false;
              };
              ShowTimeoutDuration = {
                enabled = true;
              };
              SilentTyping = {
                enabled = true;
                enabledGlobally = true;
                hideChatBoxTypingIndicators = false;
                hideMembersListTypingIndicators = false;
                chatIcon = true;
                chatIconLeftClickAction = "channel";
                chatIconMiddleClickAction = "settings";
                chatIconRightClickAction = "global";
                chatContextMenu = true;
                defaultHidden = true;
                enabledLocations = "";
                disabledLocations = "";
                alwaysEnableInActiveVoiceChat = false;
                temporaryEnableThresholdServers = 0;
                temporaryEnableThresholdDirectMessages = 0;
              };
              UserMessagesPronouns = {
                enabled = true;
                showSelf = true;
                pronounsFormat = "LOWERCASE";
              };
              UserVoiceShow = {
                enabled = true;
                showInMemberList = true;
                showInMessages = true;
                showInUserProfileModal = true;
              };
              ValidUser = {
                enabled = true;
              };
              VoiceChatDoubleClick = {
                enabled = true;
              };
              ViewIcons = {
                enabled = true;
                format = "webp";
                imgSize = "1024";
              };
              VolumeBooster = {
                enabled = true;
                multiplier = 2;
              };
              WebScreenShareFixes = {
                enabled = true;
              };
              HeaderBarAPI = {
                enabled = true;
              };
              SidebarChat = {
                enabled = true;
              };
              AudioPlayerAPI = {
                enabled = true;
              };
              UserAreaAPI = {
                enabled = true;
              };
              NoTrack = {
                enabled = true;
                disableAnalytics = true;
              };
              EquicordHelper = {
                enabled = true;
                noMirroredCamera = false;
                removeActivitySection = false;
                showYourOwnActivityButtons = false;
                forceRoleIcon = false;
                restoreFileDownloadButton = false;
                noModalAnimation = false;
                disableAdoptTagPrompt = false;
                jsonGateway = false;
                noBulletPoints = false;
                accountStandingButton = false;
                refreshSlashCommands = false;
                hidevoiceIndicatorForMutedChannels = false;
              };
              Settings = {
                enabled = true;
                settingsLocation = "aboveNitro";
                includeVencordInfoWhenCopying = true;
              };
              ConcatenatedComponentExtractor = {
                enabled = true;
              };
              ConcatenatedModules = {
                enabled = true;
              };
              DisableDeepLinks = {
                enabled = true;
              };
              SupportHelper = {
                enabled = true;
              };
              WebContextMenus = {
                enabled = true;
              };
              NoMiddleClickPaste = {
                enabled = true;
              };
              UnlockedAvatarZoom = {
                enabled = true;
              };
              YoutubeAdblock = {
                enabled = true;
              };
              FixYoutubeEmbeds = {
                enabled = true;
              };
              TextReplace = {
                enabled = true;
                stringRules = [ ];
                regexRules = [
                  # {
                  #     name = "Rxddit";
                  #     find = ''http(?:s)?:\/\/(?:redd\.it\/|(?:[\w-]+\.)?r[ex]ddit\.com\/)(?:(r\/[\w-]+\/s\/\w+)|(u)(?:ser)?(\/)([\w-]+)(.*?)?|(?:(?:r\/[\w-]+\/)?((c)omments\/))(\w+)(?:\/[^\/\s\)\]\}]+)+(\/)(\w+)|(?:(?:(?:r\/[\w-]+\/)?comments\/)|(?<=redd\.it\/))(\w+)(?:\/.*?)?|(?!r\/|u\/|user\/|comments\/)(.*?)?)\/?(?:[?#][^\s\)\]\}]*)?(?=[\s\)\]\}]|$)'';
                  #     replace = "https://rxddit.com/$1$2$3$4$5$6$8$9$7$9$10$11";
                  #     onlyIfIncludes = "";
                  #     scope = "myMessages";
                  #     id = "d275a934-620c-4fcf-ad2b-486e34ceabe7";
                  #   }
                  {
                    name = "fxtwitter-source";
                    find = ''https?:\/\/(?:www\.)?(?:twitter|x)\.com\/([a-zA-Z0-9_]+\/status\/\d+)(?!\S*src)\S*'';
                    replace = "[[source]](https://fxtwitter.com/$1)";
                    onlyIfIncludes = "";
                    scope = "myMessages";
                    id = "465442e7-4814-41e8-acc6-cba0cc74e58f";
                  }
                  {
                    name = "fxtwitter-raw";
                    find = ''https?:\/\/(?:www\.)?(?:twitter|x)\.com\/([a-zA-Z0-9_]+\/status\/\d+)\S*src'';
                    replace = "https://fxtwitter.com/$1.mp4";
                    onlyIfIncludes = "";
                    scope = "myMessages";
                    id = "a1b2c3d4-5678-4abc-9def-0123456789ab";
                  }
                  {
                    name = "fxtwitch";
                    find = ''https?:\/\/(?:clips\.twitch\.tv|(?:www\.)?twitch\.tv\/\w+\/clip)\/([A-Za-z0-9\-_]+)'';
                    replace = "https://fxtwitch.seria.moe/clip/$1";
                    onlyIfIncludes = "";
                    scope = "myMessages";
                    id = "e37176d0-8062-4516-9caf-49d35b5f7bd7";
                  }
                  {
                    name = "italicize-messages";
                    find = ''^(?!.*https?:\/\/)([\s\S]+)$'';
                    replace = "_$1_";
                    onlyIfIncludes = "";
                    scope = "myMessages";
                    id = "9d4b2f6a-3e7c-48a1-b95d-1f6e0a8c4d72";
                  }
                ];
              };
            };
            uiElements = {
              chatBarButtons = { };
              messagePopoverButtons = { };
            };
            notifications = {
              timeout = 5000;
              position = "bottom_right";
              useNative = "not-focused";
              missed = true;
              logLimit = 50;
            };
            cloud = {
              authenticated = false;
              url = "https://cloud.equicord.org/";
              settingsSync = false;
              settingsSyncVersion = 1782061065061;
            };
            ignoreResetWarning = false;
            userCssVars = { };
            windowsMaterial = "none";
          };
          extraQuickCss = ''
            *, *::before, *::after {
                font-family:'${config.theme.font.nerdFont}', mono !important;
              }
              
              :root {
                  --font-primary: '${config.theme.font.nerdFont}', mono;
                  --font-display: '${config.theme.font.nerdFont}', mono;
                  --font-code: '${config.theme.font.nerdFont}', mono;
                  --font-headline: '${config.theme.font.nerdFont}', mono;
                }
          '';
        };
      };
    };
}

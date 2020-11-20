.class public LSession/SessionManager;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field public static APPURL:Ljava/lang/String; = null

.field public static APPURL_FLAG:Ljava/lang/String; = null

.field public static ARM_FLAG:Ljava/lang/String; = null

.field private static BDATE:Ljava/lang/String; = null

.field public static BLAST_FLAG:Ljava/lang/String; = null

.field private static final DEMO_USER:Ljava/lang/String; = "demo_user"

.field public static DEVICE_TOKEN:Ljava/lang/String; = null

.field public static EMAIL:Ljava/lang/String; = null

.field public static FIRST_NAME:Ljava/lang/String; = null

.field private static final HOME_ID:Ljava/lang/String; = "home_id"

.field private static final IMAGE:Ljava/lang/String; = "image"

.field public static IP_FIRST:Ljava/lang/String; = null

.field public static IP_SECOND:Ljava/lang/String; = null

.field public static IP_THIRD:Ljava/lang/String; = null

.field public static final ISARMED:Ljava/lang/String; = "isarmed"

.field public static final ISTOWEREXSITS:Ljava/lang/String; = "is_tower_exist"

.field public static LAST_NAME:Ljava/lang/String; = null

.field private static final LOCK_CODE:Ljava/lang/String; = "lock_id"

.field public static final LOCK_SWITCH_ID:Ljava/lang/String; = "lock_switch_id"

.field public static final MAIN_LOCK_ROOM:Ljava/lang/String; = "main_lock_room"

.field public static PASSWORD:Ljava/lang/String; = null

.field public static PHONE:Ljava/lang/String; = null

.field public static ROUTERIP:Ljava/lang/String; = null

.field public static SECURITY_TOKEN:Ljava/lang/String; = null

.field public static SELECTED_SWITCH_FLAG:Ljava/lang/String; = null

.field private static final SPASSWORD:Ljava/lang/String; = "spassword"

.field private static final SSID:Ljava/lang/String; = "ssid"

.field public static SYNC_FLAG:Ljava/lang/String;

.field public static TOPIC_NAME:Ljava/lang/String;

.field public static USERID:Ljava/lang/String;

.field public static USER_TYPE:Ljava/lang/String;

.field public static X_AUTH_TOKEN:Ljava/lang/String;


# instance fields
.field _context:Landroid/content/Context;

.field editor:Landroid/content/SharedPreferences$Editor;

.field pref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const-string v0, "X-AUTH-TOKEN"

    sput-object v0, LSession/SessionManager;->X_AUTH_TOKEN:Ljava/lang/String;

    .line 22
    const-string v0, "Security Token"

    sput-object v0, LSession/SessionManager;->SECURITY_TOKEN:Ljava/lang/String;

    .line 23
    const-string v0, "Device Token"

    sput-object v0, LSession/SessionManager;->DEVICE_TOKEN:Ljava/lang/String;

    .line 24
    const-string v0, "First Name"

    sput-object v0, LSession/SessionManager;->FIRST_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "Last Name"

    sput-object v0, LSession/SessionManager;->LAST_NAME:Ljava/lang/String;

    .line 26
    const-string v0, "Email"

    sput-object v0, LSession/SessionManager;->EMAIL:Ljava/lang/String;

    .line 27
    const-string v0, "Phone"

    sput-object v0, LSession/SessionManager;->PHONE:Ljava/lang/String;

    .line 28
    const-string v0, "UsetId"

    sput-object v0, LSession/SessionManager;->USERID:Ljava/lang/String;

    .line 29
    const-string v0, "User Type"

    sput-object v0, LSession/SessionManager;->USER_TYPE:Ljava/lang/String;

    .line 30
    const-string v0, "Password"

    sput-object v0, LSession/SessionManager;->PASSWORD:Ljava/lang/String;

    .line 31
    const-string v0, "AppUrl"

    sput-object v0, LSession/SessionManager;->APPURL:Ljava/lang/String;

    .line 32
    const-string v0, "AppUrlFlag"

    sput-object v0, LSession/SessionManager;->APPURL_FLAG:Ljava/lang/String;

    .line 33
    const-string v0, "SyncFlag"

    sput-object v0, LSession/SessionManager;->SYNC_FLAG:Ljava/lang/String;

    .line 34
    const-string v0, "firstip"

    sput-object v0, LSession/SessionManager;->IP_FIRST:Ljava/lang/String;

    .line 36
    const-string v0, "secondip"

    sput-object v0, LSession/SessionManager;->IP_SECOND:Ljava/lang/String;

    .line 37
    const-string v0, "thirdip"

    sput-object v0, LSession/SessionManager;->IP_THIRD:Ljava/lang/String;

    .line 38
    const-string v0, "routerip"

    sput-object v0, LSession/SessionManager;->ROUTERIP:Ljava/lang/String;

    .line 39
    const-string v0, "topic_name"

    sput-object v0, LSession/SessionManager;->TOPIC_NAME:Ljava/lang/String;

    .line 40
    const-string v0, "selected_switch"

    sput-object v0, LSession/SessionManager;->SELECTED_SWITCH_FLAG:Ljava/lang/String;

    .line 41
    const-string v0, "blast_flag"

    sput-object v0, LSession/SessionManager;->BLAST_FLAG:Ljava/lang/String;

    .line 42
    const-string v0, "arm_flag"

    sput-object v0, LSession/SessionManager;->ARM_FLAG:Ljava/lang/String;

    .line 53
    const-string v0, "birth_date"

    sput-object v0, LSession/SessionManager;->BDATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, LSession/SessionManager;->_context:Landroid/content/Context;

    .line 63
    iget-object v0, p0, LSession/SessionManager;->_context:Landroid/content/Context;

    const-string v1, "SmartHome"

    sget v2, LSession/Constants;->PRIVATE_MODE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    .line 64
    iget-object v0, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    .line 65
    return-void
.end method


# virtual methods
.method public getAPPURL()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->APPURL:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public getAppUrlFlag()Z
    .locals 4

    .prologue
    .line 159
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->APPURL_FLAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 160
    .local v0, "url":Z
    return v0
.end method

.method public getArmFlag()Z
    .locals 4

    .prologue
    .line 119
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->ARM_FLAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 120
    .local v0, "flag":Z
    return v0
.end method

.method public getBirthDate()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->BDATE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "birthDate":Ljava/lang/String;
    return-object v0
.end method

.method public getBlastFlag()Z
    .locals 4

    .prologue
    .line 109
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->BLAST_FLAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 110
    .local v0, "flag":Z
    return v0
.end method

.method public getCameraShortcutFlag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 395
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "camera_shortcut"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getDemoUser()Ljava/lang/String;
    .locals 4

    .prologue
    .line 139
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "demo_user"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "url":Ljava/lang/String;
    return-object v0
.end method

.method public getDeviceToken()Ljava/lang/String;
    .locals 3

    .prologue
    .line 192
    iget-object v0, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v1, LSession/SessionManager;->DEVICE_TOKEN:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmail()Ljava/lang/String;
    .locals 4

    .prologue
    .line 225
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->EMAIL:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 212
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->FIRST_NAME:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getFirstString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 280
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->IP_FIRST:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getGoColor(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 154
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "$0,0,255,"

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "color":Ljava/lang/String;
    return-object v0
.end method

.method public getHomeId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 337
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "home_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 218
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->LAST_NAME:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getLockCode()Ljava/lang/String;
    .locals 4

    .prologue
    .line 353
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "lock_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "lockcode":Ljava/lang/String;
    return-object v0
.end method

.method public getLockSwitchId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 385
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "lock_switch_id"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "lockSwitchId":Ljava/lang/String;
    return-object v0
.end method

.method public getMainLockRoom()Ljava/lang/String;
    .locals 4

    .prologue
    .line 379
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "main_lock_room"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 380
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 3

    .prologue
    .line 196
    iget-object v0, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v1, LSession/SessionManager;->PASSWORD:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 4

    .prologue
    .line 232
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->PHONE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getRouterIP()Ljava/lang/String;
    .locals 4

    .prologue
    .line 305
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->ROUTERIP:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 306
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getSPassword()Ljava/lang/String;
    .locals 4

    .prologue
    .line 270
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "spassword"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "ssid"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 266
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getSecondString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 290
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->IP_SECOND:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getSecurityToken()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->SECURITY_TOKEN:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getThirdString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 295
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->IP_THIRD:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getTopicName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 315
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->TOPIC_NAME:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getTowerFlag()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 408
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "is_tower_exist"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 409
    .local v0, "flag":Ljava/lang/Boolean;
    return-object v0
.end method

.method public getUSERID()Ljava/lang/String;
    .locals 4

    .prologue
    .line 207
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->USERID:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getUserImage()Ljava/lang/String;
    .locals 4

    .prologue
    .line 250
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    const-string v2, "UserImage"

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    .local v0, "name":Ljava/lang/String;
    return-object v0
.end method

.method public getUserSync()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 172
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->SYNC_FLAG:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 173
    .local v0, "flag":Ljava/lang/Boolean;
    return-object v0
.end method

.method public getUserType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 98
    iget-object v1, p0, LSession/SessionManager;->pref:Landroid/content/SharedPreferences;

    sget-object v2, LSession/SessionManager;->USER_TYPE:Ljava/lang/String;

    const-string v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "userType":Ljava/lang/String;
    return-object v0
.end method

.method public logoutUser()V
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 363
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 364
    return-void
.end method

.method public saveBirthDate(Ljava/lang/String;)V
    .locals 2
    .param p1, "date"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->BDATE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 83
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 84
    return-void
.end method

.method public saveCameraIdWithShortcutFlag(Ljava/lang/String;)V
    .locals 2
    .param p1, "cameraID"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "camera_shortcut"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 391
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 392
    return-void
.end method

.method public saveDeviceToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "mDeviceToken"    # Ljava/lang/String;

    .prologue
    .line 187
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->DEVICE_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 188
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    return-void
.end method

.method public saveLockCode(Ljava/lang/String;)V
    .locals 2
    .param p1, "lockCode"    # Ljava/lang/String;

    .prologue
    .line 348
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lock_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 349
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 350
    return-void
.end method

.method public saveLockSwitchId(Ljava/lang/String;)V
    .locals 2
    .param p1, "lockSwitchId"    # Ljava/lang/String;

    .prologue
    .line 369
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "lock_switch_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 370
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 371
    return-void
.end method

.method public savePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 183
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->PASSWORD:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 184
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 185
    return-void
.end method

.method public saveSPassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "spassword"    # Ljava/lang/String;

    .prologue
    .line 260
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "spassword"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 261
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 262
    return-void
.end method

.method public saveSSID(Ljava/lang/String;)V
    .locals 2
    .param p1, "ssid"    # Ljava/lang/String;

    .prologue
    .line 255
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "ssid"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 257
    return-void
.end method

.method public saveSecurityToken(Ljava/lang/String;)V
    .locals 2
    .param p1, "strToken"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->SECURITY_TOKEN:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 179
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 180
    return-void
.end method

.method public saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "firstName"    # Ljava/lang/String;
    .param p3, "lastName"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "phone"    # Ljava/lang/String;
    .param p6, "userType"    # Ljava/lang/String;
    .param p7, "mDate"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->USERID:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->FIRST_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 72
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->LAST_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 73
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->EMAIL:Ljava/lang/String;

    invoke-interface {v0, v1, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 74
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->PHONE:Ljava/lang/String;

    invoke-interface {v0, v1, p5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 75
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->USER_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, p6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 76
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->BDATE:Ljava/lang/String;

    invoke-interface {v0, v1, p7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 78
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public saveUserImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageUrl"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "UserImage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 90
    return-void
.end method

.method public setAppUrl(Ljava/lang/String;)V
    .locals 2
    .param p1, "appUrl"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->APPURL:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 125
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 126
    return-void
.end method

.method public setAppUrlFlag(Z)V
    .locals 2
    .param p1, "appUrlFlag"    # Z

    .prologue
    .line 144
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->APPURL_FLAG:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 145
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 146
    return-void
.end method

.method public setArmFlag(Z)V
    .locals 2
    .param p1, "b_flag"    # Z

    .prologue
    .line 114
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->ARM_FLAG:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 115
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 116
    return-void
.end method

.method public setBlastFlag(Z)V
    .locals 2
    .param p1, "b_flag"    # Z

    .prologue
    .line 104
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->BLAST_FLAG:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 106
    return-void
.end method

.method public setDemoUser(Ljava/lang/String;)V
    .locals 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 134
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "demo_user"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 135
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 136
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 326
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->FIRST_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 327
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 328
    return-void
.end method

.method public setFirstString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 275
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->IP_FIRST:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 276
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 277
    return-void
.end method

.method public setGoColor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 150
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 151
    return-void
.end method

.method public setHomeId(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 342
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "home_id"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 343
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 344
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 2
    .param p1, "lastName"    # Ljava/lang/String;

    .prologue
    .line 331
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->LAST_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 332
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 333
    return-void
.end method

.method public setMainLockRoom(Ljava/lang/String;)V
    .locals 2
    .param p1, "roomid"    # Ljava/lang/String;

    .prologue
    .line 374
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "main_lock_room"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 375
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 376
    return-void
.end method

.method public setRouterIP(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->ROUTERIP:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 311
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 312
    return-void
.end method

.method public setSecondString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 285
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->IP_SECOND:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    return-void
.end method

.method public setThirdString(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->IP_THIRD:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 302
    return-void
.end method

.method public setTopicName(Ljava/lang/String;)V
    .locals 2
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 320
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->TOPIC_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 321
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 322
    return-void
.end method

.method public setTowerFlag(Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 401
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "is_tower_exist"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 403
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setUserImage(Ljava/lang/String;)V
    .locals 2
    .param p1, "imageurl"    # Ljava/lang/String;

    .prologue
    .line 245
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "UserImage"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 246
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 247
    return-void
.end method

.method public setUserSync(Z)Ljava/lang/Boolean;
    .locals 2
    .param p1, "b"    # Z

    .prologue
    .line 165
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->SYNC_FLAG:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public setUserType(Ljava/lang/String;)V
    .locals 2
    .param p1, "userType"    # Ljava/lang/String;

    .prologue
    .line 93
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    sget-object v1, LSession/SessionManager;->USER_TYPE:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 94
    iget-object v0, p0, LSession/SessionManager;->editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method
